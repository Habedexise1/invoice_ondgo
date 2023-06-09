// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        filled: true, // Enable fill color
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0x8098F980), // Set the border color here
          ),
        ),
        prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.blue[100]),
        labelText: 'Password', labelStyle: TextStyle(color: Colors.blue[100]),
        suffixIcon: IconButton(
          icon: _obscureText
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          color: Colors.blue[100],
        ),
      ),
    );
  }
}
