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
              left: 32,
              top: 180,
              child: Container(
                height: 8,
                width: 9,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 48,
              top: 130,
              child: Container(
                height: 14,
                width: 14,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 100,
              top: 120,
              child: Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 130,
              top: 140,
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 160,
              top: 150,
              child: Container(
                height: 13,
                width: 13,
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              left: 8,
              right: rightPadding,
              top: 160,
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
                                      padding: EdgeInsets.only(
                                          left: 24, bottom: 24, top: 32),
                                      decoration: BoxDecoration(
                                          color: Colors.indigoAccent,
                                          borderRadius:
                                              BorderRadius.circular(24)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Spacer(),
                                          Text(
                                            'Dropbox',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            "Plus",
                                            style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Spacer(),
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                              text: "11",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "/20 GB",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                                fontSize: 18,
                                              ),
                                            ),
                                          ]))
                                        ],
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
                                            color: Colors.white, width: 10),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.move_to_inbox,
                                          color: Colors.white,
                                          size: 48,
                                        ),
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
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 8,
                                    right: 0,
                                    top: 90,
                                    child: Container(
                                      height: 135,
                                      padding: EdgeInsets.only(
                                          left: 24, bottom: 16, top: 16),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(24)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Spacer(),
                                          Text(
                                            'Google',
                                            style: GoogleFonts.montserrat(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(
                                            "Drive",
                                            style: GoogleFonts.montserrat(
                                              color: Colors.black,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Spacer(),
                                          Text.rich(TextSpan(children: [
                                            TextSpan(
                                              text: "245",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                            TextSpan(
                                              text: "/500 GB",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.grey
                                                    .withOpacity(0.8),
                                                fontSize: 15,
                                              ),
                                            ),
                                          ]))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 40,
                                    top: 44,
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Colors.grey[200], width: 10),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.cloud_circle,
                                          size: 42,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 5,
                            width: 16,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: ListView.builder(itemBuilder: (context, index){
                        return Card(
                          color: Colors.white,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: <Widget>[
                              
                            ],
                          ),
                        );
                      }),
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
