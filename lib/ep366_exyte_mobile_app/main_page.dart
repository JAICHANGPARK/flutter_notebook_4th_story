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

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 48,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32)
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}



















