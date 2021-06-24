import 'package:flutter/material.dart';
import 'package:rumahberbagi_mobile/screens/home.dart';
import 'package:rumahberbagi_mobile/screens/login.dart';

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
        return MaterialPageRoute(builder: (context) => const Home());
      default:
        return MaterialPageRoute(
            builder: (contex) => const Scaffold(
                  body: Center(
                    child: Text('404 Not Found'),
                  ),
                ));
    }
  }
}
