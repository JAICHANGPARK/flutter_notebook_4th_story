import 'package:flutter/cupertino.dart';
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
  /// 8 23 90
  Color appAccentColor = Color(0xff08175A);

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
              color: appAccentColor,
            ),
          ),
          Positioned(
            left: 0,
            top: MediaQuery.of(context).size.height / 4,
            right: 0,
            bottom: 0,
            child: Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
              )),
              elevation: 4,
              child: Column(),
            ),
          )
        ],
      ),
    );
  }
}
