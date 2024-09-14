import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/cover.JPG'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          const Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.all(60.0),
                child: Text(
                  "Welcome..",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),


    );
  }
}