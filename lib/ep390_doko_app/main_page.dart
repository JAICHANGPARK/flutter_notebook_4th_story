import 'package:flutter/material.dart';

class DokoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DokoDetailPage(),
    );
  }
}
class DokoDetailPage extends StatefulWidget {
  @override
  _DokoDetailPageState createState() => _DokoDetailPageState();
}

class _DokoDetailPageState extends State<DokoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.indigo,
            ),
          ),
          Positioned(
            left: 0,
            top: MediaQuery.of(context).size.height / 8,
            right: 0,
            child: Card(),
          )
        ],
      ),

    );
  }
}












