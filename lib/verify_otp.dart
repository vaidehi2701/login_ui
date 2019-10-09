import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class verify_otp extends StatefulWidget {
  @override
  _verify_otpState createState() => _verify_otpState();
}

class _verify_otpState extends State<verify_otp> {

  final changeNotifier = StreamController<Functions>();
  bool hasError = false;
  String submittedString = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Verification Code'),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Text('Enter OTP' , style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 50,right: 50),
                  child: PinCodeTextField(
                    length: 4, // must be greater than 0
                    obsecureText: false, //optional, default is false
                    shape: PinCodeFieldShape.round,
                    onDone: (String value) {
                      setState(() {
                        submittedString = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 30),
                Text("Didn't Received OTP ?"),
                SizedBox(height: 30),
                Container(
                  width: 250,
                  child: FlatButton(
                    onPressed: (){},
                    child: Text(' VERIFY ' , style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[500],
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.lightBlue[200],
                          offset: Offset(1, -2),
                        blurRadius: 5
                      ),
                      BoxShadow(
                          color: Colors.lightBlue[200],
                          offset: Offset(-1, 2),
                          blurRadius: 5
                      )
                    ]

                  ),
                ),

            ],
            ),
          ),
        ),
      ),
    );
  }
}
