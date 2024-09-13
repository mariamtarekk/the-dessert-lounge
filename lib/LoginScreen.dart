import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/cover.JPG'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left:50.0,bottom: 20),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 33,
                          color:Color.fromRGBO(000, 000, 000, 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50,right:50),
                      child: TextFormField(
                        onFieldSubmitted: (String value){
                          print(value);
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          labelText: "Email Address",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50,right:50),
                      child: TextFormField(
                        onFieldSubmitted:(String value){
                          print(value);
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 1.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                          child: TextButton(onPressed: () {} , child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromRGBO(100, 020, 020, 1)
                            ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: Container(
                        color: const Color.fromRGBO(000, 000, 000, 0.3),
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "New to the app?",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextButton(onPressed: () {} , child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Color.fromRGBO(100, 020, 020, 1),
                          ),
                        ),
                        ),
                      ],
                    ),

                  ],
                ),
            ),
          ),
        ],
      ),


    );
  }
}