import 'package:flutter/material.dart';
import 'package:rumahberbagi_mobile/utils/router_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: CustomRouter.generateRoute,
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
    );
  }
}
