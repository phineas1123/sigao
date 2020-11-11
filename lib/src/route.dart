import 'package:flutter/material.dart';
import 'package:sigao/src/ui/dashboard.dart';
import 'package:sigao/src/ui/scan_detail.dart';

class CustomRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "scan/detail":
        return MaterialPageRoute(builder: (_) => ScanDetail());
        break;
      default:
        return MaterialPageRoute(builder: (_) => Dashboard());
        break;
    }
  }
}
