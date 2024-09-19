import 'package:flutter/material.dart';

class CategoryBar extends StatefulWidget {
  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  // Current selected category
  String selectedCategory = 'All';

  // List of categories
  final List<String> categories = ['All', 'Macarons', 'CheeseCakes', 'Cookies', 'Brownies', 'Iced Coffee'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0, // Fixed height for the category bar
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
        itemCount: categories.length,
        itemBuilder: (context, index) {
          String category = categories[index];
          bool isSelected = selectedCategory == category;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = category; // Change the selected category when tapped
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              margin: const EdgeInsets.only(right: 10.0), // Space between categories
              decoration: BoxDecoration(
                color: isSelected ? Colors.red.shade200 : Colors.grey.shade200, // Change background color for selected category
                borderRadius: BorderRadius.circular(20), // Rounded edges
              ),
              child: Center(
                child: Text(
                  category,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black, // Change text color for selected category
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}