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
              )
              
            ],
          ),
        ),
    );
  }
}





























