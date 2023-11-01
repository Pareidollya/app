import 'package:flutter/material.dart';

class InputLarge extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLines;

  InputLarge({
    required this.labelText,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      maxLines: maxLines,
      keyboardType: keyboardType,
      cursorColor: Colors.yellow,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
        filled: true,
        fillColor: Color.fromARGB(255, 58, 58, 58),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.yellow, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
