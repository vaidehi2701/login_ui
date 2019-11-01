import 'package:flutter/material.dart';

class SecondSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('image/Sydney.png',
                  width: 50,
                  height: 50,),
                ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('We Advertise Your Job',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Fill a Simple Form To Tell Us \n  \t\t\t\t\t\t\t Your Requirement",
                        style: TextStyle(
                          fontSize: 20
                        ),),
                )

              ],
                ),


          ),
        )
      ),
    );
  }
}
