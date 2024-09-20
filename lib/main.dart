import 'package:flutter/material.dart';
import 'package:the_dessert_lounge/modules/welcome/WelcomeScreen.dart';

import 'modules/home/HomeScreen.dart';
import 'modules/login/LoginScreen.dart';
import 'modules/signup/SignupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }

}

