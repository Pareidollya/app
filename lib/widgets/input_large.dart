import 'package:flutter/material.dart';

class InputLarge extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool password;

  InputLarge({
    required this.labelText,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.password = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      controller: controller,
      onChanged: onChanged,
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
