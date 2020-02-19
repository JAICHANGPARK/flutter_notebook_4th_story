import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExyteMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SecondPage());
  }
}

class SecondPage extends StatefulWidget {
  @override
  _ExyteMobileAppState createState() => _ExyteMobileAppState();
}

class _ExyteMobileAppState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 48,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 5,
                        spreadRadius: 4,
                        offset: Offset(-4, -8))
                  ]),
              padding: EdgeInsets.only(left: 32, top: 38),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Aerum",
                    style: GoogleFonts.montserrat().copyWith(fontSize: 22),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 32),
                    height: 260,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://assets-ouch.icons8.com/thumb/905/cdec4487-c229-4acc-9bfc-0fcae8f06f78.png"),
                            fit: BoxFit.fitHeight,
                            colorFilter: ColorFilter.mode(
                                Colors.white, BlendMode.saturation))),
                  ),
                  Text(
                    "Work process",
                    style: GoogleFonts.montserrat().copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: ListView.builder(
                      itemBuilder: (context, index) {},
                      itemCount: 4,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3.3,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
