import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class sign_up extends StatefulWidget {
  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black87
          ),
        ),
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Image.asset('image/selection.png',
                      width: 260,
                      height: 160,),
                  ),
                  Expanded(
                      child: Container()),
                ],
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30 , right: 30),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 40),
                            child: Text('SIGN UP ',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 70),
                      Container(
                          width: double.infinity,
                          height: 320,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 15),
                            blurRadius: 15,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, -10),
                            blurRadius: 15,
                          ),
                        ]),
                        child: Column(
                          children: <Widget>[
                            Form(
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Name',
                                          labelText: 'Name'
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Mobile Number',
                                          labelText: 'Mobile No'
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Email',
                                          labelText: 'Email'
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Birthdate',
                                          labelText: 'Birthdate'
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              child: RaisedButton(
                                onPressed: () {},
                                padding: const EdgeInsets.all(0.0),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                //color: Colors.cyan[100],
                                elevation: 20,
                                child:Container(
                                  width: 150,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(

                                        colors: [
                                          Color.fromARGB(255, 148, 231, 225),
                                          Color.fromARGB(255, 62, 182, 226)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Text('Submit' ,
                                      textAlign: TextAlign.center, style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Colors.white
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('image/image_02.png')
                    ],
                  ),
                ),
              ),
              


            ],
          ),
        ),

      ),
    );
  }
}






