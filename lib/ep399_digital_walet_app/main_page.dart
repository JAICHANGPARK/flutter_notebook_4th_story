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
    return Scaffold();
  }
}

