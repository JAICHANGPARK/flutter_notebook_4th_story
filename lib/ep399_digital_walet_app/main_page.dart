import 'package:fl_chart/fl_chart.dart';
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
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  )
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).size.height/4.7,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                    ]
                  ),
                  child: Stack(
                    children: <Widget>[
                        Positioned(
                          right: 16,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: PieChart(
                              
                            ),
                          ),
                        )

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}








































