// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:invoice_ondgo/component/password.dart';

import '../component/loginbutton.dart';
import 'Register_Bussiness.dart';
import 'homepage.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 79, 141),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color.fromARGB(255, 2, 79, 141),
      ),
      body: Container(
        height: 700,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/On_the_go.png'),
            // fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi there',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      'Enter New Password',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Please enter a new password',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Re-enter password',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  LoginButton(
                    width: 390,
                    height: 200,
                    text: 'Login',
                    color: Colors.white,
                    textColor: Color.fromARGB(255, 0, 88, 161),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Register_BussinessPage()),
                      );
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
