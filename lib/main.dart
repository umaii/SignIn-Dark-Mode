import 'package:authentication4_flutter_app/SignUp_dark.dart';
import 'package:authentication4_flutter_app/home.dart';
import 'package:authentication4_flutter_app/SignUp_light.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Home(),
    );
  }
}

