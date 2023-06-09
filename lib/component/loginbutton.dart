// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screen/homepage.dart';

class LoginButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;

  LoginButton({required this.width, required this.text, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: () {
          // Navigate to another page or perform any desired action
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Blue background color
          onPrimary: Color.fromARGB(255, 0, 88, 161), // White text color
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
