// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../screen/homepage.dart';

class LoginButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;

  LoginButton({
    required this.width,
    required this.text,
    required this.height,
    required this.color,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color, // White text color
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
