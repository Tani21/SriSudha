import 'package:flutter/material.dart';

class Dashboard_unpaid_invoice extends StatefulWidget {
  const Dashboard_unpaid_invoice({super.key});

  @override
  State<Dashboard_unpaid_invoice> createState() => _Dashboard_unpaid_invoiceState();
}

class _Dashboard_unpaid_invoiceState extends State<Dashboard_unpaid_invoice> {
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
                 //   padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_invoices');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text('Quotations', style: TextStyle(color: Colors.black, fontSize: 20,),))
                      ],
                    ),
                  ),
                ),
                Container(
                  
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    width:size.width*0.28,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'dashboard_unpaid_invoice');
                    },
                    child: Container(
                       decoration: BoxDecoration(
                 color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: size.width*0.28,
                      //height: size.height*0.05,
                      
                    padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                      child: Center(child: Text('Unpaid invoices', style: TextStyle(color: Colors.black, fontSize: 18,),)),
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
                 
                    //color: Color.fromARGB(255, 255, 221, 201),
                   
                  
                  Text('Invoices', style: TextStyle(color: Colors.black, fontSize: 20),),
                  Spacer(),
            
                   
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
            Text('RdFinance Auditing Services.pdf', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('200 KB',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
         ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 221, 201)),
                      onPressed: (){}, child: Text('Download', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0)),)),
      //Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
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
            Text('Projections Services.pdf', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('720 KB',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),


        Spacer(),
         ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 221, 201)),
                      onPressed: (){}, child: Text('Download', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0)),)),
    //  Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
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
            Text('Income Tax Filing.pdf', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('16 MB',style: TextStyle(color: Colors.grey[600]),)
          ],
        ),

  Spacer(),
       ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 221, 201)),
                      onPressed: (){}, child: Text('Download', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0)),)),
      //Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
     SizedBox(width: 10,),
       
              ],
            ),





             Container(
              color: Colors.grey[300],
               child: Row(
               // crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: false, onChanged: (bool? value) {setState(() {
          isChecked = value!;
        });}),

        //Spacer(),

       
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Finance Auditing Serices.pdf', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
              Text('4.2 MB',style: TextStyle(color: Colors.grey[600]),)
            ],
          ),
       


        Spacer(),
         ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 221, 201)),
                      onPressed: (){}, child: Text('Download', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0)),)),
       //Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
       SizedBox(width: 10,),
     // Spacer(),
       
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
            Text('Business Valuation.pdf', style: TextStyle(color: Colors.grey[900], fontWeight: FontWeight.bold, fontSize: 17),),
            Text('400 KB',style: TextStyle(color: Colors.grey[500]),)
          ],
        ),


        Spacer(),
         ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 221, 201)),
                      onPressed: (){}, child: Text('Download', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0)),)),
     // Text('Pending', style: TextStyle(color: Color.fromARGB(255, 251, 133, 0), fontSize: 17),),
     SizedBox(width: 10,),
       
              ],
            ),
          ],
        )
        ),

    );
  }
}