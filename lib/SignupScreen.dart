
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget{
  SignupScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  String? _selectedValue;
  final List<String> _items = ["male", "female"];

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
                    padding: EdgeInsets.only(left: 50.0, bottom: 20),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 33,
                        color: Color.fromRGBO(000, 000, 000, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print("value");
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        labelText: "First Name",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print("value");
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        labelText: "Second Name",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width: 1.0),
                        ),
                        labelText: "Email Address",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width: 1.0),
                        ),
                        labelText: "Birthday",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Gender', // Label for the dropdown
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width: 1.0),
                        ),// Add border to make it look like a TextFormField
                      ),
                      value: _selectedValue, // Initial value for the dropdown
                      items: _items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item), // Display text for each item
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedValue = newValue; // Update the selected value when user chooses
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select an option'; // Validation if no option is selected
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print("value");
                      },
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        labelText: "Address (optional)",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            print("password");
                          },
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: "Password",
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: TextFormField(
                      onFieldSubmitted: (String value) {
                        print(value);
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Container(
                      color: const Color.fromRGBO(000, 000, 000, 0.3),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'SignUp',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      )
    );
  }

  void setState(Null Function() param0) {}
}
