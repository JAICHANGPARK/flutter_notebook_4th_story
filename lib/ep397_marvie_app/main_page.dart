import 'package:flutter/material.dart';

class MarvieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarvieHome(),
    );
  }
}
class MarvieHome extends StatefulWidget {
  @override
  _MarvieHomeState createState() => _MarvieHomeState();
}

class _MarvieHomeState extends State<MarvieHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 24,
            top: 24,
            bottom: 24,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 84,
                    width: 84,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



























