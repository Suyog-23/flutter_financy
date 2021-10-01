
import 'package:financy/router/route_list.dart';
import 'package:financy/screens/home.dart';
import 'package:flutter/material.dart';

class RouteGenerator {

  static Route<dynamic>? generate(RouteSettings settings) {
    /// Check routing name and navigate
    /// to the correct screen
    switch(settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (context) => Home());
      default:
        return null;
    }
  }
}