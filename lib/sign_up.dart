import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class sign_up extends StatefulWidget {
  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {

  final emailValidation = new TextEditingController();
  final mobileValidation = new TextEditingController();
  final nameValidation = new TextEditingController();
  final bdayValidation = new TextEditingController();



  DateTime date= DateTime.now();
  TimeOfDay time= TimeOfDay.now();




  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2016),
        lastDate: new DateTime(2020)
    );
    if(picked != null) setState(() => bday = picked.toString());
  }
  String email;
  String mobile;
  String name;
  String bday;

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validateMobile(String value) {
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }



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
                      SizedBox(height: 85),
                      Container(
                          width: double.infinity,
                          height: 270,
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
                                      textInputAction: TextInputAction.next,
                                      controller: nameValidation,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Name',
                                          labelText: 'Name'
                                      ),
                                 // validator : validateEmail,
                                  onSaved: (val) => name=val,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: mobileValidation,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Mobile Number',
                                          labelText: 'Mobile No'
                                      ),
                                      validator : validateMobile,
                                      onSaved: (val) => mobile=val,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      textInputAction: TextInputAction.done,
                                      controller: emailValidation,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter Your Email',
                                          labelText: 'Email'
                                      ),
                                      validator : validateMobile,
                                      onSaved: (val) => email=val,
                                    ),
                                    SizedBox(height: 10),



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
                                onPressed: () {
                                  Navigator.pushNamed(context, '/Detail');
                                },
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







