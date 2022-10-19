import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(227, 228, 138, 89),
        title: Text('Dashboard', style: TextStyle(color: Colors.black, fontSize: 20),),
        actions: [
      IconButton(
        icon: Image.asset('assets/man_face.png'), // please change image according to authentication
        onPressed: () {},
      ),
    ],
      ),
    );
  }
}