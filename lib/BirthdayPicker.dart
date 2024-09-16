import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BirthdayPicker extends StatefulWidget {
  TextEditingController _dateController;

  BirthdayPicker(this._dateController, {super.key});
  @override
  _BirthdayPickerState createState() => _BirthdayPickerState();
}

class _BirthdayPickerState extends State<BirthdayPicker> {
  final _dateController = TextEditingController();

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
