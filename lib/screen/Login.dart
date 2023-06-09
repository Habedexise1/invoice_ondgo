// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../component/checkbox.dart';
import '../component/email.dart';
import '../component/loginbutton.dart';
import '../component/password.dart';
import 'forgot_password.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key, required String title});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  TextEditingController emailController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 79, 141),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
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
                      'Log into your account',
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
                    'Please select a method to log in:',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/Google__G__Logo 1.png',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Google", style: TextStyle(fontSize: 20))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/facebook.png',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "FaceBook",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/Line 2.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'or continue with email',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('images/Line 2.png'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  EmailTextField(controller: emailController),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClickableCheckbox(
                            initialValue: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()),
                          );
                        },
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoginButton(
                    width: 390,
                    height: 100,
                    text: 'Login',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont have account?  ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Create an account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
