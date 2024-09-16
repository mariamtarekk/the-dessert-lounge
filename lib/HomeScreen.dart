import 'package:flutter/material.dart';
import 'package:the_dessert_lounge/CategoryBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                // Do something when the menu icon is pressed
                print("Menu pressed");
              },
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 25),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the search bar
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 10, // The blur effect of the shadow
                      offset: const Offset(0, 3), // The position of the shadow (x, y)
                    ),
                  ],
                ),
                child: TextField(
                  onSubmitted: (String value){
                    print(value);
                  },
                  cursorColor: Colors.red.shade200,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.red.shade200,
                    ),
                    contentPadding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
                    hintText: 'Search',
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45,left: 5,bottom: 10),
                    child: Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
