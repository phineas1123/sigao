import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  GoogleMapController mapController;
  LatLng _coordinate = const LatLng(-6.3016017, 106.6507954);
  
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        mapType: MapType.normal,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
          target: _coordinate,
          zoom: 15.0,
        ),
      ),
      // Container(
      //   height: 50,
      //   width: double.infinity,
      //   color: Colors.red,
      // ),
    );
  }
}
