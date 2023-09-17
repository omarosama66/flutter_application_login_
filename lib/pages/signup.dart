// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signup extends StatelessWidget {
  const signup({super.key});

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
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "SignUp",
                          style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        SvgPicture.asset(
                          "assets/icons/signup.svg",
                          height: 180,
                        ),
                        SizedBox(height: 27),
                        Container(
                            width: 270,
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
                                borderRadius: BorderRadius.circular(66),
                                color: Colors.purple[100])),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(66)),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          width: 270,
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
                          height: 17,
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
                                        horizontal: 106, vertical: 10)),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.purple[500])),
                            child: Text(
                              "SignUp",
                              style: TextStyle(fontSize: 24),
                            )),
                        SizedBox(
                          height: 33,
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
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        SizedBox(
                          width: 299,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 0.6,
                                color: Colors.purple[900],
                              )),
                              Text(
                                " OR ",
                                style: TextStyle(color: Colors.purple[900]),
                              ),
                              Expanded(
                                  child: Divider(
                                thickness: 0.6,
                                color: Colors.purple[900],
                              ))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 27),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             GestureDetector(
                              onTap: (){      },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  color: Colors.purple[400],
                                  height: 27,
                                ),
                              ),
                            ),
                              SizedBox(width: 22,),
                              GestureDetector(
                                  onTap: (){      },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  color: Colors.purple[400],
                                  height: 27,
                                ),
                              ),
                            ),
                               SizedBox(width: 22,),
                              GestureDetector(
                              onTap: (){      },
                              child: Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: Colors.purple, width: 1)),
                                child: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  color: Colors.purple[400],
                                  height: 27,
                                ),
                              ),
                            ),
                            ],
                          ),
                        )
                      ],
                      
                    ),
                    
                  ),
                  Positioned(
                      left: 0,
                      width: 111,
                      child: Image.asset("assets/images/main_top.png"
                      ),
                      ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      width: 150,
                      child: Image.asset("assets/images/login_bottom.png"
                      )
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
