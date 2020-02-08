import 'package:flutter/material.dart';

class MonochromeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonochromeShopHome(),
    );
  }
}

class MonochromeShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 34,
            left: 16,
            right: 16,
            child: Container(
              height: 100,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Text(
                      "LOSER",
                      style: TextStyle(
                          fontSize: 64, letterSpacing: -6,
                      fontWeight: FontWeight.bold,),
                    ),
                  ),
                  Center(
                    child: Text("V",
                    style: TextStyle(
                      fontSize: 84,
                      letterSpacing: -8,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            right: 24,
            child: Container(
              height: 86,
              width: 86,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "explore",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}