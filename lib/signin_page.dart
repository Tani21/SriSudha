import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                        color: Colors.grey,
                        blurRadius: 2.0,
                        spreadRadius: 2,
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
                            'Sign in',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.bold),
                          ),
                        ),
          
          
                        SizedBox(height: 20,),
          
          
                     Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 216, 213, 213),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: TextField(
                    //  controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.email_outlined,
                            size: 28,
                            color: Color.fromARGB(255, 118, 114, 114),
                          ),
                        ),
                        hintText: 'Email',
          
                        hintStyle: TextStyle(
                          color:Color.fromARGB(255, 118, 114, 114),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
          

           SizedBox(height: 15,),
          
          
                     Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 216, 213, 213),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: TextField(
                      obscureText: true,
                    //  controller: _emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.lock_outline,
                            size: 28,
                            color: Color.fromARGB(255, 118, 114, 114),
                          ),
                        ),
                        hintText: 'Password',
          
                        hintStyle: TextStyle(
                          color:Color.fromARGB(255, 118, 114, 114),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                               Navigator.pushNamed(context, 'dashboard');
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
                          height: 30,
                        ),
          
          
          
                        Text('Forgot Password', style: TextStyle(color: Color.fromARGB(255, 118, 114, 114)),),
                        // SizedBox(
                        //   height: 50,
                        //   width: width * 0.8,
                        //   child: ElevatedButton(
                        //     onPressed: () {},
                        //     style: ElevatedButton.styleFrom(
                        //         backgroundColor: Colors.white,
                        //         side: BorderSide(
                        //           width: 2,
                        //           color: Color.fromARGB(227, 228, 138, 89),
                        //         )),
                        //     child: Text(
                        //       'Sign Up',
                        //       style: TextStyle(
                        //           color: Color.fromARGB(227, 228, 138, 89),
                        //           fontSize: 21),
                        //     ),
                        //   ),
                        // ),
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
      ),
    );
  }
}