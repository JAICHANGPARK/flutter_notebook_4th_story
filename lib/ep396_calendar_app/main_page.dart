import 'package:flutter/material.dart';


class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalendarMainPage(),
    );
  }
}

class CalendarMainPage extends StatefulWidget {
  @override
  _CalendarMainPageState createState() => _CalendarMainPageState();
}

class _CalendarMainPageState extends State<CalendarMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text("August",style: TextStyle(
          color: Colors.black,
        ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: (){
              showDatePicker(context: context, initialDate: DateTime.now(),
                  firstDate: DateTime(1990, 1,1), lastDate: DateTime(2022, 1,1));
            },
          )
        ],
      ),
      drawer: Drawer(),
      bo
    );
  }
}
























