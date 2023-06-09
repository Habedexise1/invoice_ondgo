import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController controller;

  EmailTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        labelText: 'Email',
        labelStyle:
            TextStyle(color: Colors.blue[100]), // Set the hint text color here
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Colors.blue[100],
        ),
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter your email';
        } else if (!value.contains('@')) {
          return 'Invalid email address';
        }
        return null;
      },
    );
  }
}
