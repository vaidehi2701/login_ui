import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:login_ui/home_page.dart';


class ProjectDetails extends StatefulWidget {
  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {

    final start_date =   new TextEditingController();
    final end_date =   new TextEditingController();
    final project_name =   new TextEditingController();
    final company_name =   new TextEditingController();
    final position =   new TextEditingController();
    final field =   new TextEditingController();
    final project_details =   new TextEditingController();


   Future ChooseStartDate(BuildContext context, String initialDateString) async {
    var now = new DateTime.now();
    var initialDate = convertToDate(initialDateString) ?? now;

    initialDate = (initialDate.year >= 1900 && initialDate.isBefore(now) ? initialDate : now);

    var result = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: new DateTime(1900),
        lastDate: new DateTime.now());

    if (result == null) return;

    setState(() {
      start_date.text = new DateFormat.yMd().format(result);
    });
  }

    Future ChooseEndDate(BuildContext context, String initialDateString) async {
      var now = new DateTime.now();
      var initialDate = convertToDate(initialDateString) ?? now;

      initialDate = (initialDate.year >= 1900 && initialDate.isBefore(now) ? initialDate : now);

      var result = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: new DateTime(1900),
          lastDate: new DateTime.now());

      if (result == null) return;

      setState(() {
        end_date.text = new DateFormat.yMd().format(result);
      });
    }

  DateTime convertToDate(String input) {
    try
    {
      var d = new DateFormat.yMd().parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.supervised_user_circle),
                  hintText: 'Enter Project Name',
                  labelText: 'Project Name'
              ),
              controller: project_name,
            ),
            Row(children: <Widget>[
              Expanded(
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      icon: Icon(Icons.date_range),
                      hintText: 'Enter starting date',
                      labelText: 'Start Date',
                    ),
                    controller: start_date,
                    keyboardType: TextInputType.datetime,
                  )),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  icon: new Icon(Icons.arrow_drop_down,size: 25,textDirection: prefix0.TextDirection.ltr,),
                  tooltip: 'Choose date',
                  onPressed: (() {
                    ChooseStartDate(context, start_date.text);
                  }),
                ),
              ),

            ]),
            Row(children: <Widget>[
              Expanded(
                  child: new TextFormField(
                    decoration: new InputDecoration(
                      icon: Icon(Icons.date_range),
                      hintText: 'Enter Ending Date',
                      labelText: 'End Date',
                    ),
                    controller: end_date,
                    keyboardType: TextInputType.datetime,
                  )),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  icon: new Icon(Icons.arrow_drop_down,size: 25,textDirection: prefix0.TextDirection.ltr,),
                  tooltip: 'Choose date',
                  onPressed: (() {
                    ChooseEndDate(context, end_date.text);
                  }),
                ),
              ),

            ]),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.account_balance),
                  hintText: 'Enter Company Name',
                  labelText: 'Company Name'
              ),
              controller: company_name,
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.account_balance),
                  hintText: 'Enter Position',
                  labelText: 'Position'
              ),
              controller: position,
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.account_balance),
                  hintText: 'Enter Field',
                  labelText: 'Field'
              ),
              controller: field,
            ),
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.library_books),
                  hintText: 'Enter Project Details',
                  labelText: 'Project Details'
              ),
              controller: project_details,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButton(
                onPressed: (){
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                      new Home_Page(
                        company: company_name.text,
                        project: project_name.text,
                        start: start_date.text,
                        end: end_date.text,
                        position: position.text,
                        field: field.text,
                        detail: project_details.text,
                      ),
                  );
                  Navigator.of(context).push(route);
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      )
    );
  }
}



