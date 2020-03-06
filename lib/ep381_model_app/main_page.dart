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
                        left:48,
                        top: 32,
                        child: Container(
                          height: 320,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 32,
                        child: Text("LAYLA ONE", style: GoogleFonts.montserrat(
                            fontSize: 42,
                          fontWeight: FontWeight.bold
                        ),),
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
                                  fit: BoxFit.none
                              )
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
                              image: NetworkImage("https://cdn.pixabay.com/photo/2015/05/03/14/40/woman-751236_960_720.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
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
                            fit: BoxFit.cover
                          )
                          ),
                        ),
                      ),
                      Positioned(
                          left: 16,
                          top: 24,
                          child: Container(
                            height: 120,
                            width: 120,
                            child: Center(
                              child: Text("17",style: TextStyle(
                                fontSize: 38,
                                color: Color(0xff643635),
                                fontWeight: FontWeight.bold
                              ),),
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
