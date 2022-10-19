import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: height * 0.5,
                color: Color.fromARGB(227, 228, 138, 89),
              ),
            ],
          ),

          Center(
              child: Column(
            children: [
              SizedBox(
                height: height * .08,
              ),
              Image.asset(
                'assets/sos.png',
                height: 150,
                scale: 1.5,
              ),
              SizedBox(
                height: height * .02,
              ),
              Text(
                'SriSudha',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Consultancy',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * .04,
              ),
              Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 203, 195, 195),
                      blurRadius: 3.0,
                      spreadRadius: 3,
                      offset: Offset(
                        2,
                        2,
                      ),
                    )
                  ],
                ),
                child: Container(
                  color: Colors.white,
                  width: width * 0.9,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
                        child: Text(
                          'Welcome to SriSudha Consultancy',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Your one step business solution',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        width: width * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                              Navigator.pushNamed(context, 'signin');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(227, 228, 138, 89),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: width * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'signup');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                width: 2,
                                color: Color.fromARGB(227, 228, 138, 89),
                              )),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color.fromARGB(227, 228, 138, 89),
                                fontSize: 21),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
         
        ],
      ),
    );
  }
}
