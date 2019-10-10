import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';


class verify_otp extends StatefulWidget {
  @override
  _verify_otpState createState() => _verify_otpState();
}

class _verify_otpState extends State<verify_otp> {

  TextEditingController controller = TextEditingController();
  bool hasError = false;
  String thisText = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Verification Code'),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 60),
                    Image.asset('image/otp.png' ,
                    width: 450,
                    height: 200,),
                    SizedBox(height: 50),
                    Text('Enter OTP' , style: TextStyle(
                      fontSize: 18,
                    ),),
                    SizedBox(height: 20,),
                    PinCodeTextField(
                      maxLength: 4,
                      hideCharacter: true,
                      highlight: true,
                      controller: controller,
                      highlightColor: Colors.blue,
                      defaultBorderColor: Colors.black,
                      hasTextBorderColor: Colors.green,
                      maskCharacter: controller.text,
                      onTextChanged: (text) {
                        setState(() {
                          hasError = false;
                        });
                      },
                      onDone: (text){
                        print("DONE $text");
                      },
                    ),
                    Text(thisText),
//                  SizedBox(height: 10),
//                  Text("Didn't Received OTP ?"),
                    SizedBox(height: 20),
                      Container(
                        width: 250,
                          child: FlatButton(
                            onPressed: (){
                              setState(() {
                                this.thisText = controller.text;
                              });
                            },
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
        ),
      ),
    );
  }
}
