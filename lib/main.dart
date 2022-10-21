import 'package:app/dashboard.dart';
import 'package:app/dashboard_calendar.dart';
import 'package:app/dashboard_home.dart';
import 'package:app/dashboard_invoices.dart';
import 'package:app/dashboard_paid_invoice.dart';
import 'package:app/dashboard_unpaid_invoice.dart';
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
    'dashboard_home':(context) => Dashboard_home(),
    'dashboard_calendar':(context) => Dashboard_calendar(),
    'dashboard_invoices':(context) => Dashboard_invoices(),
    'dashboard_unpaid_invoice':(context) => Dashboard_unpaid_invoice(),
    'dashboard_paid_invoice':(context) => Dashboard_paid_invoice(),
  },
    );
  }
}

