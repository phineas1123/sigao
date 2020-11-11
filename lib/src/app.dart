import 'package:flutter/material.dart';
import 'package:sigao/src/route.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: CustomRoute.generateRoute,
      theme: ThemeData(
        accentColor: Colors.purple,
        primaryColor: Colors.purple,
      ),
    );
  }
}