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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i=0; i < 9; i++){
      int k = 32 + Random().nextInt(32);
      r.add(k);
    }
    r.forEach(
        (r){
          print(r);
        }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 24,
                right: 24,
                top: 24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Cloud",style: GoogleFonts.montserrat(
                          fontSize: 48,
                          fontWeight: FontWeight.bold
                        ),),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    Text("Observatory",style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontSize: 32
                    ),)
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
                left: 0,
                right: 0,
                top: 210,
                child: Transform.rotate(
                  angle: -0.2,
                  child: Row(
                    children: r.map((e) => Container(
                      height: e.toDouble(),
                      width: e.toDouble(),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                    )).toList()
                  ),
                ),
              )
              
            ],
          ),
        ),
    );
  }
}





























