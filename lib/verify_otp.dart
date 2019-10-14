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
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: SingleChildScrollView(
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
                                Navigator.pushNamed(context, '/Detail');
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
//
//    ListView.builder(
//      itemBuilder: (context, position) {
//        return Column(
//          children: <Widget>[
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: <Widget>[
//                Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Padding(
//                      padding:
//                      const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
//                      child: Text(
//                        sendersList[position],
//                        style: TextStyle(
//                            fontSize: 22.0, fontWeight: FontWeight.bold),
//                      ),
//                    ),
//                    Padding(
//                      padding:
//                      const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
//                      child: Text(
//                        subjectList[position],
//                        style: TextStyle(fontSize: 18.0),
//                      ),
//                    ),
//                  ],
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//                      Text(
//                        "5m",
//                        style: TextStyle(color: Colors.grey),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Icon(
//                          Icons.star_border,
//                          size: 35.0,
//                          color: Colors.grey,
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//            Divider(
//              height: 2.0,
//              color: Colors.grey,
//            )
//          ],
//        );
//      },
//      itemCount: sendersList.length,
//    ),
  }
}
