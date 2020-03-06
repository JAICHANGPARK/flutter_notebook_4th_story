import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:google_fonts/google_fonts.dart';

class ModelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffEAE0DF),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    width: 64,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 2,
                          color: Color(0xff643635),
                        ),
                        Container(
                          width: 24,
                          height: 2,
                          color: Color(0xff643635),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "MODELS",
                    style: TextStyle(color: Color(0xff643635), fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                    color: Color(0xff643635),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: PageView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Positioned(
                        right: 48,
                        left: 48,
                        top: 32,
                        child: Container(
                          height: 320,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2014/01/03/01/13/girl-237871_960_720.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 32,
                        child: Text(
                          "LAYLA ONE",
                          style: GoogleFonts.notoSans(
                              fontSize: 42,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff643635),
                              letterSpacing: 5),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 100,
                        bottom: 100,
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                top: BorderSide(color: Colors.white, width: 20),
                                left:
                                    BorderSide(color: Colors.white, width: 20),
                                bottom:
                                    BorderSide(color: Colors.white, width: 20),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/09/01/21/53/blue-2705642_960_720.jpg",
                                  ),
                                  fit: BoxFit.none)),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        child: Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "AGENCY",
                                style: GoogleFonts.notoSans(
                                  fontSize: 20,
                                  letterSpacing: 4,
                                  color: Color(0xff643635),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 28),
                                child: Text(
                                  "Image Board",
                                  style: GoogleFonts.shadowsIntoLight(
                                      fontSize: 30,
                                      letterSpacing: 5,
                                      color: Color(0xff643635),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, left: 16, right: 16, bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Height",
                                      style: TextStyle(
                                          color: Color(0xff643635),
                                          fontSize: 18),
                                    ),
                                    Container(
                                      height: 1,
                                      width: 42,
                                      color: Color(0xff643635),
                                    ),
                                    Text(
                                      "176 cm",
                                      style: TextStyle(
                                          color: Color(0xff643635),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, left: 16, right: 16, bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Hips",
                                      style: TextStyle(
                                          color: Color(0xff643635),
                                          fontSize: 18),
                                    ),
                                    Container(
                                      height: 1,
                                      width: 42,
                                      color: Color(0xff643635),
                                    ),
                                    Text(
                                      "85 cm",
                                      style: TextStyle(
                                          color: Color(0xff643635),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 24, left: 16, right: 16, bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Shoe",
                                      style: TextStyle(
                                          color: Color(0xff643635),
                                          fontSize: 18),
                                    ),
                                    Container(
                                      height: 1,
                                      width: 42,
                                      color: Color(0xff643635),
                                    ),
                                    Text(
                                      "38 eu",
                                      style: TextStyle(
                                          color: Color(0xff643635),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Positioned(
                        right: 0,
                        top: 40,
                        bottom: 200,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 + 32,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/05/03/14/40/woman-751236_960_720.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 100,
                        bottom: 100,
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                top: BorderSide(color: Colors.white, width: 16),
                                right:
                                    BorderSide(color: Colors.white, width: 16),
                                bottom:
                                    BorderSide(color: Colors.white, width: 16),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/09/01/21/53/blue-2705642_960_720.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                          left: 16,
                          top: 24,
                          child: Container(
                            height: 120,
                            width: 120,
                            child: Center(
                              child: Text(
                                "17",
                                style: TextStyle(
                                    fontSize: 38,
                                    color: Color(0xff643635),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                      Positioned(
                        left: 16,
                        top: 24,
                        child: Container(
                          height: 120,
                          width: 120,
                          child: CircularText(
                            children: <TextItem>[
                              TextItem(
                                  text: Text(
                                    "TOP MODEL",
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff643635),
                                    ),
                                  ),
                                  startAngle: 120),
                              TextItem(
                                text: Text(
                                  "TOP MODEL",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff643635),
                                  ),
                                ),
                                startAngle: -120,
                              ),
                              TextItem(
                                text: Text(
                                  "+".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff643635),
                                  ),
                                ),
                                startAngle: -20,
                              ),
                              TextItem(
                                text: Text(
                                  "+".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff643635),
                                  ),
                                ),
                                startAngle: 100,
                              ),
                              TextItem(
                                text: Text(
                                  "TOP MODEL",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff643635),
                                  ),
                                ),
                                startAngle: 0,
                              ),
                              TextItem(
                                text: Text(
                                  "+".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff643635),
                                  ),
                                ),
                                startAngle: 220,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 12,
                        right: 0,
                        child: Text("Layla Ong, contestant in Asia's Next\nTop Model Season 5, standing at",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          wordSpacing: 1,
                          letterSpacing: 3
                        ),),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
