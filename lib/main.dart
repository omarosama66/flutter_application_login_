import 'package:flutter/material.dart';
import 'package:flutter_application_login_kamel/pages/login.dart';
import 'package:flutter_application_login_kamel/pages/signup.dart';
import 'package:flutter_application_login_kamel/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const welcome(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/login': (context) => const login(),
          '/logup': (context) => const signup(),
        });
  }
}
