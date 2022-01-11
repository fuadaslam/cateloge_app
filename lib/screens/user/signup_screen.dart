import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:catalogue_app/screens/pages/home_screen.dart';
import 'package:catalogue_app/screens/user/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25),
                child: Center(
                  child: Text(
                    "Palm Fiber",
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(),
                  SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 35, right: 35),
                            child: Column(
                              children: [
                                TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Name",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Email",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  style: TextStyle(),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: Colors.grey.shade100,
                                      filled: true,
                                      hintText: "Password",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'LogIn',
                                      style: TextStyle(
                                          fontSize: 27,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.blue,
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()),
                                            );
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward,
                                          )),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginScreen()),
                                        );
                                      },
                                      child: Text(
                                        'Sign In',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xff4c505b),
                                            fontSize: 14),
                                      ),
                                      style: ButtonStyle(),
                                    ),
                                    // TextButton(
                                    //     onPressed: () {
                                    //       Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(builder: (context) => HomePage()),
                                    //       );
                                    //     },
                                    //     child: Text(
                                    //       'Forgot Password',
                                    //       style: TextStyle(
                                    //         color: Color(0xff4c505b),
                                    //         fontSize: 14,
                                    //       ),
                                    //     ),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
