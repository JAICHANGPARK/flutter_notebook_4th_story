import 'package:flutter/material.dart';


class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionMainPage(),
    );
  }
}
class FashionMainPage extends StatefulWidget {
  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
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
            flex: 2,
            child: Placeholder(),
          ),
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}



















