import 'package:flutter/material.dart';

class PlantShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlantMainPage(),
    );
  }
}
class PlantMainPage extends StatefulWidget {
  @override
  _PlantMainPageState createState() => _PlantMainPageState();
}

class _PlantMainPageState extends State<PlantMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height/ 2,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}

















