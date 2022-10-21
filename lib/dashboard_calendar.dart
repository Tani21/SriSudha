import 'package:app/calendar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Dashboard_calendar extends StatefulWidget {
  const Dashboard_calendar({super.key});

  @override
  State<Dashboard_calendar> createState() => _Dashboard_calendarState();
}

class _Dashboard_calendarState extends State<Dashboard_calendar> {


CalendarController _controller = CalendarController();   
  
  @override  
  void initState() {  
    super.initState();  
    _controller = CalendarController();  
  }  


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
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Upcoming Events', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),

              Center(
                child: Container(
                   decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: size.width * 0.9,
                padding: EdgeInsets.fromLTRB(12, 16, 12, 16),

                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Today', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('2 Meetings', style: TextStyle(fontSize: 17),), 

                              Row(
                                children: [
                                  Text('View Details', style: TextStyle(fontSize: 17),),
                                  SizedBox(width: 4,),
                                  IconButton(
                                    onPressed: () {}, icon: Icon(Icons.arrow_drop_down_circle_sharp,
                          color: Colors.black,
                        ),
                                  ),

                                ],
                              )
                            ],
                          )
                        ],
                      ),

                ),
              ),

              SizedBox(height: 10,),

              Center(
                child: Container(
                   decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: size.width * 0.9,
                padding: EdgeInsets.fromLTRB(12, 16, 12, 16),

                child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('This Month', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('24 Meetings', style: TextStyle(fontSize: 17),), 

                              Row(
                                children: [
                                  Text('View Details', style: TextStyle(fontSize: 17),),
                                  SizedBox(width: 4,),
                                  IconButton(
                                    onPressed: () {}, icon: Icon(Icons.arrow_drop_down_circle_sharp,
                          color: Colors.black,
                        ),
                                  ),

                                ],
                              )
                            ],
                          )
                        ],
                      ),

                ),
              ),






              SizedBox(height: 20,),


              Container(
                padding: EdgeInsets.all(12),
                color: Color.fromARGB(255, 16, 31, 52),
                height: size.height*0.5,
                width: size.width,
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Calendar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                    SizedBox(height: 15,),
                    Container(
                    height: size.height*0.4,
                    width: size.width*0.9,
                      child: Calendar()),
                  ],
                ),
              ),

            ],

      ),
        ),
      ),

    );
  }
}