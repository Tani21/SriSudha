import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

const int STEPS = 5;

class Dashboard_home extends StatefulWidget {
  const Dashboard_home({super.key});

  @override
  State<Dashboard_home> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard_home> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 213, 213),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(227, 228, 138, 89),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
                'assets/man_face.png'), // please change image according to authentication
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Alloted Employees (5)',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      'View More',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle_sharp,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 31, 52),
              borderRadius: BorderRadius.circular(5),
            ),
            width: size.width * 0.9,
            padding: EdgeInsets.fromLTRB(12, 16, 12, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Progress',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FullLinearStepIndicator(
                        backgroundColor: Color.fromARGB(255, 16, 31, 52),
                        steps: STEPS,
                        lineHeight: 3.5,
                        activeNodeColor: Colors.brown,
                        inActiveNodeColor: const Color(0xffd1d5d8),
                        activeLineColor: Colors.brown,
                        inActiveLineColor: const Color(0xffd1d5d8),
                        controller: pageController,
                        // labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
                        complete: () {
                          //typically, you'd want to put logic that returns true when all the steps
                          //are completed here
                          return Future.value(true);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 31, 52),
              borderRadius: BorderRadius.circular(5),
            ),
            width: size.width * 0.9,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Progress Status',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Explore our premium version where you get entire eco-system of out services in a single go.',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    new CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 13.0,
                      animation: true,
                      percent: 0.7,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '70%',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'COMPLETED',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
          ),


          SizedBox(
            height: 20,
          ),

          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 16, 31, 52),
              borderRadius: BorderRadius.circular(5),
            ),
            width: size.width,
            padding: EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Update Events', style: TextStyle(color: Colors.white, fontSize: 20),), 
                SizedBox(height: 12,),
                Container(
                  decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
                  
                  width: size.width*0.9,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Today', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('2 Meetings'), 

                          Row(
                            children: [
                              Text('View Details'),
                              SizedBox(width: 4,),
                              Icon(
                      Icons.arrow_drop_down_circle_sharp,
                      color: Colors.black,
                    ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
      ),
    );
  }
}
