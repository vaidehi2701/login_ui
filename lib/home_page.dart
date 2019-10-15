import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {

  final String company;
  final String project;
  final String start;
  final String end;
  final String position;
  final String field;
  final String detail;

  Home_Page(
      {Key key,
        this.company,
        this.project,
        this.start,
        this.end,
        this.position,
        this.field,
        this.detail
      }
      ) : super (key : key);


  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {

//    final column = Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Text('Project Name'),
////
//        Text('Start Date'),
//        Text('End Date'),
//        Text('Company Name'),
//      ],
//    );

    return Scaffold(

      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 10),
                    blurRadius: 10,
                  ),
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, -8),
                    blurRadius: 10,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Company Name : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.company}"),
                    ],
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("Project Name : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.project}"),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("Start Date : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.start}"),
                    ],
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("End Date : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.end}"),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("Poition : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.position}"),
                    ],
                  ),

                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("Field : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.field}"),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("Project Detail : " , style: TextStyle(
                          fontSize: 16 , fontWeight: FontWeight.bold
                      ),),
                      Text("${widget.detail}"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
