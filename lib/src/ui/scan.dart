import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  bool _isIdle = true;
  bool _isAlreadyScan = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double halfWidth = width / 2;
    double heightSpace = Theme.of(context).textTheme.headline3.fontSize;
    return Container(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Scan Your Surrounding",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: heightSpace,
          ),
          // Text(
          //   "Average Noise Level:",
          //   style: Theme.of(context).textTheme.headline6,
          // ),
          // SizedBox(
          //   height: heightSpace,
          // ),
          // Text(
          //   "0.0 dB",
          //   style:
          //       Theme.of(context).textTheme.headline6.apply(fontWeightDelta: 5),
          // ),
          // SizedBox(
          //   height: heightSpace,
          // ),
          Container(
            width: halfWidth,
            height: halfWidth,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Visibility(
                  visible: !_isIdle,
                  child: CircularProgressIndicator(
                    value: 0.3,
                    strokeWidth: 8,
                    backgroundColor: Colors.grey[200],
                  ),
                ),
                Visibility(
                  visible: !_isIdle,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "0.0 dB",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                Visibility(
                  visible: _isIdle,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isIdle = !_isIdle;
                      });
                    },
                    elevation: 0.0,
                    color: Colors.purple,
                    child: Text(
                      "Scan Now",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .apply(color: Colors.white),
                    ),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: heightSpace,
          ),
          Visibility(
            visible: _isAlreadyScan,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "scan/detail"),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "more detail",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .apply(color: Colors.blue),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.blue,
                    size: Theme.of(context).textTheme.button.fontSize,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
