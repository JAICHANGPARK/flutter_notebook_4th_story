import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HandMadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => HandMadeMainPage(),
      },
    );
  }
}

class HandMadeMainPage extends StatefulWidget {
  @override
  _HandMadeAppState createState() => _HandMadeAppState();
}

class _HandMadeAppState extends State<HandMadeMainPage> {
  final _pageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/04/09/08/00/girl-2215071_960_720.jpg"),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 36,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: MediaQuery.of(context).size.height / 2.2,
            right: 16,
            top: MediaQuery.of(context).size.height / 1.9,
            child: Container(
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: WormEffect(activeDotColor: Colors.pinkAccent),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            right: 16,
            top: MediaQuery.of(context).size.height / 1.75,
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 24),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "METAMORPHOSE",
                        style: GoogleFonts.openSans(
                            fontSize: 16, letterSpacing: 1.2),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "DRAGONFLY WINGS",
                        style: GoogleFonts.merriweather(
                            fontSize: 28, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Headpiece with wings of dragonflies very elegantly"
                        "complement to your look at special events, parties, "
                        "weddings or just can bring to your everyday cloths more "
                        "originality",
                        style: TextStyle(fontSize: 12, letterSpacing: 2),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        height: 38,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Text(
                                "\$55",
                                style: TextStyle(),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "see details",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
