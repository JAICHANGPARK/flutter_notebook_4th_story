
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class VideoProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VPMainPage(),
    );
  }
}

class VPMainPage extends StatefulWidget {
  @override
  _VPMainPageState createState() => _VPMainPageState();
}

class _VPMainPageState extends State<VPMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        body: Center(
          child: Text("This is the Widget behind the sliding panel"),
        ),
      )
    );
  }
}

























