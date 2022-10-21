import 'package:app/dashboard_calendar.dart';
import 'package:app/dashboard_home.dart';
import 'package:app/dashboard_invoices.dart';
import 'package:flutter/material.dart';
// import 'package:linear_step_indicator/linear_step_indicator.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:custom_navigator/custom_navigator.dart';
// import 'package:custom_navigator/custom_scaffold.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard_home(),
    Dashboard_invoices(),
    Dashboard_calendar(),
    Dashboard_home(),
    Dashboard_home(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 216, 213, 213),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_frames),
            label: 'Invoices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open_rounded),
            label: 'Files',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 16, 31, 52),
        unselectedItemColor: Color.fromARGB(255, 216, 213, 213),
        // unselectedLabelStyle: TextStyle(color: Colors.black),
        
        onTap: _onItemTapped,
      ),
      
    );
  }
}
