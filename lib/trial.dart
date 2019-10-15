import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;

class trial extends StatefulWidget {
  @override
  _trialState createState() => _trialState();
}


class _trialState extends State<trial> {

  DateTime startDate = DateTime.now();
  DateTime endDate= DateTime.now().add(new Duration(days: 7));


  Future date (BuildContext context) async {
  final List<DateTime> picked = await DateRagePicker.showDatePicker(
    context: context,
    initialFirstDate: startDate,
    initialLastDate: endDate,
    firstDate: new DateTime(2015),
    lastDate: new DateTime(2020)
  );
      if (picked != null && picked.length == 2) {
      setState(() {
        startDate = picked[0];
        endDate = picked[1];
      });


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
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                onTap: () async {

                   await date(context);
                   },
                  child: Text('Start Date')),
              Text('${DateFormat('dd/MM/yyyy').format(startDate).toString()}'),

              GestureDetector(
                  onTap: () async {
                    await date(context);
                  },
                  child: Text('End Date')),
              Text(' ${DateFormat('dd/MM/yyyy').format(endDate).toString()}'),
//              TextFormField(
//                decoration: InputDecoration(
//                    icon: Icon(Icons.library_books),
//                    hintText: 'Enter Project Details',
//                    labelText: 'Project Details'
//                ),
//              ),
                ],
              ),
          ),
    );
  }
}


