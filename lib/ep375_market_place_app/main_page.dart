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
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        "Discounts, free, tax, and tip will be\ncalculated on checkout",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.yellow),
                    child: Center(
                      child: Text("CHECK OUT NOW WITH ELIGIBLE SHOPS"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
