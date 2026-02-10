import 'package:assignment_2/home/home_screen.dart';
import 'package:assignment_2/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        "home":(context)=>HomeScreen(),
        "login":(context)=>LoginScreen(),
      },
    );
  }
}

