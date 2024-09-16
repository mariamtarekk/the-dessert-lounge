import 'package:flutter/material.dart';
import 'package:the_dessert_lounge/WelcomeScreen.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'SignupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }

}

