import 'package:app/dashboard.dart';
import 'package:app/signin_page.dart';
import 'package:app/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:app/home_page.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

      routes: {
    'signin': (context) =>  SigninPage(),
    'signup': (context) =>  SignupPage(),
    'dashboard':(context) => Dashboard(),
  },
    );
  }
}

