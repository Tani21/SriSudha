import 'package:flutter/material.dart';

class Dashboard_paid_invoice extends StatefulWidget {
  const Dashboard_paid_invoice({super.key});

  @override
  State<Dashboard_paid_invoice> createState() => _Dashboard_paid_invoiceState();
}

class _Dashboard_paid_invoiceState extends State<Dashboard_paid_invoice> {
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
             // color: Colors.grey[500],
              borderRadius: BorderRadius.circular(5),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_invoices');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Quotations', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                //    decoration: BoxDecoration(
                //  // color: Colors.white,
                //   borderRadius: BorderRadius.circular(5),
                // ),
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
                        Text('Unpaid invoices', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                  
                  
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    width:size.width*0.28,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_paid_invoice');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Paid invoices', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
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
                  Spacer(flex: 1,),
            
                  Text('Quotation', style: TextStyle(color: Colors.black, fontSize: 20),),
                  Spacer(flex: 8,),
            
                   Text('Status', style: TextStyle(color: Colors.black, fontSize: 20),),
                   Spacer(flex: 1,),
              ],
            ),

            Row(
              
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

        Spacer(flex: 1,),

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rdtt', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[500]),)
          ],
        ),


        Spacer(flex: 3,),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      Spacer(flex: 1,),
       
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

        Spacer(flex: 1,),

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Manish Shah', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(flex: 3,),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      Spacer(flex: 1,),
       
                ],
            ),
             ),





             Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

        Spacer(flex: 1,),

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rishikesh', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(flex: 3,),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      Spacer(flex: 1,),
       
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

        Spacer(flex: 1,),

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Chandru Kumar', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(flex: 3,),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      Spacer(flex: 1,),
       
                ],
            ),
             ),







             Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

        Spacer(flex: 1,),

        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mahesh', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('Performa invoice no. 00000001',style: TextStyle(color: Colors.grey[500]),)
          ],
        ),


        Spacer(flex: 3,),
      Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
      Spacer(flex: 1,),
       
              ],
            ),
          ],
        )
        ),

    );
  }
}