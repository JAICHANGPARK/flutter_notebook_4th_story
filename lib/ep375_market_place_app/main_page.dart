import 'package:flutter/material.dart';

class MarketPlaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarketPlaceHome(),
    );
  }
}

class MarketPlaceHome extends StatefulWidget {
  @override
  _MarketPlaceHomeState createState() => _MarketPlaceHomeState();
}

class _MarketPlaceHomeState extends State<MarketPlaceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.yellow,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: Row(),
        ),
      ),

    );
  }
}






















