import 'package:flutter/material.dart';

class HandMadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/' : (context) => HandMadeMainPage(),
      },
    );
  }
}


class HandMadeMainPage extends StatefulWidget {
  @override
  _HandMadeAppState createState() => _HandMadeAppState();
}

class _HandMadeAppState extends State<HandMadeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}



















