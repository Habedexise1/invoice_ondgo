// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Register_BussinessPage extends StatefulWidget {
  const Register_BussinessPage({super.key});

  @override
  State<Register_BussinessPage> createState() => _Register_BussinessPageState();
}

class _Register_BussinessPageState extends State<Register_BussinessPage> {
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
                    'Create your account',
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
                  'Please register your business to get started.    ',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
