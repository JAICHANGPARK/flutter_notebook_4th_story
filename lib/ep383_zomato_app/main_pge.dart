import 'package:flutter/material.dart';

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => ZomatoMainPage(),
      },
    );
  }
}

class ZomatoMainPage extends StatefulWidget {
  @override
  _ZomatoMainPageState createState() => _ZomatoMainPageState();
}

class _ZomatoMainPageState extends State<ZomatoMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
          title: Text("Order")),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),title: Text("Go Out")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),title: Text("Gold")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue),title: Text("Go Out")
          )
        ],
      ),
    );
  }
}

















