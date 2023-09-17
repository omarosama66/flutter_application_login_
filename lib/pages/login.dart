// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.home),
              backgroundColor: Colors.purple,
            ),
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Log in",
                          style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SvgPicture.asset(
                          "assets/icons/login.svg",
                          width: 288,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.purple[800],
                                ),
                                hintText: "Your Email :",
                                border: InputBorder.none),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.amber[100],
                              borderRadius: BorderRadius.circular(66)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(66)),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                suffix: Icon(
                                  Icons.visibility,
                                  color: Colors.purple[900],
                                ),
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.purple[800],
                                  size: 19,
                                ),
                                hintText: "Password :",
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(27))),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        horizontal: 75, vertical: 10)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.purple[500])),
                            child: Text(
                              ("LogIn"),
                              style: TextStyle(fontSize: 24),
                            )),
                        SizedBox(
                          height: 17,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/signup");
                                },
                                child: Text(
                                  " Sign up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      "assets/images/main_top.png",
                      width: 111,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/login_bottom.png",
                      width: 111,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
