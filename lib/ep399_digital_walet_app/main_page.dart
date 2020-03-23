import 'package:flutter/material.dart';


class DigitalWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWalletHome(),
    );
  }
}
class MyWalletHome extends StatefulWidget {
  @override
  _MyWalletHomeState createState() => _MyWalletHomeState();
}

class _MyWalletHomeState extends State<MyWalletHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child:
              Container(
                height: MediaQuery.of(context).size.height / 5,
                color: Colors.blue,
              ),
            ),

          )
        ],
      ),

    );
  }
}








































