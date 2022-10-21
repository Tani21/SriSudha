import 'package:flutter/material.dart';

class Dashboard_invoices extends StatefulWidget {
  const Dashboard_invoices({super.key});

  @override
  State<Dashboard_invoices> createState() => _Dashboard_invoicesState();
}

class _Dashboard_invoicesState extends State<Dashboard_invoices> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    bool isChecked = false;
    

    return Scaffold(

       backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(227, 228, 138, 89),
        title: Text(
          'Calendar',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
           IconButton(
            icon: Icon(Icons.calendar_today, color: Colors.black,), 
            onPressed: () {},
          ),
          //SizedBox(width: 5,),
          IconButton(
            icon: Icon(Icons.doorbell_rounded, color: Colors.black,), 
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20,),

            Center(
              child: Container(
                //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: size.width*0.9,
                 decoration: BoxDecoration(
              color: Colors.grey[500],
              borderRadius: BorderRadius.circular(5),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_invoices');
                    },
                    child: Container(
                       decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                      width: size.width*0.28,
                      //height: size.height*0.05,
                      
                    padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Quotations', style: TextStyle(color: Colors.black, fontSize: 20,),))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                   decoration: BoxDecoration(
                 // color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    width:size.width*0.28,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_unpaid_invoice');
                    },
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text('Unpaid invoices', style: TextStyle(color: Colors.black, fontSize: 18,),))
                      ],
                    ),
                  ),
                ),
                Container(
                   decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                  
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    width:size.width*0.28,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_paid_invoice');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text('Paid invoices', style: TextStyle(color: Colors.black, fontSize: 18, ),))
                      ],
                    ),
                  ),
                ),
                // Container(),
                // Container(),
              ],
            ),
              ),
            ),

            SizedBox(height: 20,),

            Text('search bar aaega yaha', style: TextStyle(color: Colors.black),),

            Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Spacer(flex: 1,),
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
                    isChecked = value!;
                  });
                  }
                  ),
                  
            
                  Text('Quotation', style: TextStyle(color: Colors.black, fontSize: 20),),
                  Spacer(),
            
                   Text('Status', style: TextStyle(color: Colors.black, fontSize: 20),),
                   SizedBox(width: 10,),
              ],
            ),

            Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

       
        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rdtt', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      SizedBox(width: 10,),
       
              ],
            ),







             Container(
              color: Colors.grey[300],
               child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

       

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Manish Shah', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      SizedBox(width: 10,),
       
                ],
            ),
             ),





             Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

        

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rishikesh', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      SizedBox(width: 10,),
       
              ],
            ),





             Container(
              color: Colors.grey[300],
               child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

        

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Chandru Kumar', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      SizedBox(width: 10,),
       
                ],
            ),
             ),







             Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

       

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mahesh', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      SizedBox(width: 10,),
       
              ],
            ),
          ],
        )
        ),

    );
  }
}