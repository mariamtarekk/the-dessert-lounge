import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BirthdayPicker extends StatefulWidget {
  TextEditingController _dateController;

  BirthdayPicker(this._dateController, {super.key});
  @override
  _BirthdayPickerState createState() => _BirthdayPickerState();
}

class _BirthdayPickerState extends State<BirthdayPicker> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _dateController,
      readOnly: true,
      onTap: () => _selectDate(context),
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        focusColor: Colors.black,
        fillColor: Colors.black,
        hoverColor: Colors.black,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        labelText: "Birthday",
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

class CategoryBar extends StatefulWidget {
  const CategoryBar({super.key});

  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {


  String selectedCategory = 'All';

  // List of categories
  final List<String> categories = ['All', 'Macaroons', 'CheeseCakes', 'Cookies', 'Brownies', 'Iced Coffee'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                selectedCategory = category;
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