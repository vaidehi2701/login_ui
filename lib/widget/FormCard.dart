import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatefulWidget {
  @override
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {

  final textController = new TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String email;
  String Password;

  void submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(500),
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Login', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: .6
            ),),
          ),
          SizedBox(height: 10),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 6),
              child: TextFormField(
                controller: textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter your id',
                    labelText: 'Email'
                ),
                validator: (val) => !val.contains('@') ? 'Invalid Email' : null,
                onSaved: (val) => email=val,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'enter your password',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 15),
                child: Text('Forgot Password ?'),
              ),
            ],
          )
        ],
      ),
    );
  }
}


