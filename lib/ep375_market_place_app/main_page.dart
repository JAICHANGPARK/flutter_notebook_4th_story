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
        leading: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
          ],
        ),
        title: Text("SHOPPING CART", style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.yellow,
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 50),
          child: Row(),
        ),
      ),

    );
  }
}






















