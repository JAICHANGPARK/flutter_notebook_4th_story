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
        title: Text(
          "August",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990, 1, 1),
                  lastDate: DateTime(2022, 1, 1));
            },
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            height: MediaQuery.of(context).size.height / 8,
            child: Row(
              children: <Widget>[
                Text(
                  "17",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                Text(
                  "August",
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
                Spacer(),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text("Meeting", style: TextStyle(
                    color: Colors.white,
                  ),),

                )
              ],
            ),
          ),
          Divider(height: 0,color: Colors.grey,),
        ],
      ),
    );
  }
}

























