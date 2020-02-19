import 'package:flutter/material.dart';

class ExyteMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SecondPage()
    );
  }
}


class SecondPage extends StatefulWidget {
  @override
  _ExyteMobileAppState createState() => _ExyteMobileAppState();
}

class _ExyteMobileAppState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

      ],
    );
  }
}
