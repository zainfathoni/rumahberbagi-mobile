import 'package:flutter/material.dart';
import 'package:rumahberbagi_mobile/pages/home.dart';
import 'package:rumahberbagi_mobile/pages/login.dart';

class RouteName {
  static const String login = '/';
  static const String home = '/home';
}

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(builder: (context) => Login());
      case RouteName.home:
        return MaterialPageRoute(builder: (context) => Home());
      default:
        return MaterialPageRoute(
            builder: (contex) => Scaffold(
                  body: Center(
                    child: Text('404 Not Found'),
                  ),
                ));
    }
  }
}
