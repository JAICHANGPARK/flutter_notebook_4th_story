import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloudManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CloudMainPage(),
    );
  }
}

class CloudMainPage extends StatefulWidget {
  @override
  _CloudMainPageState createState() => _CloudMainPageState();
}

class _CloudMainPageState extends State<CloudMainPage> {
  List<Widget> _backgroundBubble;
  List<int> r = [];
  static const double leftPadding = 24.0;
  static const double rightPadding = 24.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 9; i++) {
      int k = 32 + Random().nextInt(32);
      r.add(k);
    }
    r.forEach((r) {
      print(r);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: leftPadding,
              right: rightPadding,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Cloud",
                        style: GoogleFonts.montserrat(
                            fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  Text(
                    "Observatory",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey, fontSize: 32),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height - 280,
                color: Colors.grey[200],
              ),
            ),
            Positioned(
              right: -64,
              top: 180,
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
            ),
            Positioned(
              right: 24,
              top: 190,
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
            ),
            Positioned(
              right: 120,
              top: 184,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: -10,
              top: 230,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
            ),

            Positioned(
              left: 8,
              right: rightPadding,
              top: 170,
              child: Container(
                height: 400,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Container(

                              child: Stack(
                                children: <Widget>[

                                  Positioned(
                                    top: 50,
                                    left: 16,
                                    right: 16,
                                    child: Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
                                          borderRadius: BorderRadius.circular(24)
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 50,
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 10
                                        ),
                                      ),
                                      child: Center(
                                        child: Icon(Icons.move_to_inbox,
                                          color: Colors.white,
                                          size: 48,),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.indigo,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 6,
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: leftPadding,
              right: rightPadding,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
            Positioned(
              bottom: 16,
              left: leftPadding,
              right: rightPadding,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
