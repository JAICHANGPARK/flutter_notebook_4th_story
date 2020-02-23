import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

const Color primaryColor = Color(0xff8c6e6b);
const Color secondaryColor = Color(0xffC5BCBC);

class HandMadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => HandMadeHomePage(),
        '/home': (context) => HandMadeMainPage(),
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
                  effect: WormEffect(
                    activeDotColor: Color(0xffC5BCBC),
                  ),
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
                            color: Color(0xff8c6e6b),
                            fontSize: 16,
                            letterSpacing: 1.2),
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
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16)),
                                  color: Color(0xff8c6e6b),
                                  // 140 110 107
                                ),
                                child: Center(
                                  child: Text(
                                    "see details",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
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

class HandMadeHomePage extends StatefulWidget {
  @override
  _HandMadeHomePageState createState() => _HandMadeHomePageState();
}

class _HandMadeHomePageState extends State<HandMadeHomePage> {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  List<Widget> _buildBackgroud() {
    return [
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/03/30/18/17/girl-2189247_960_720.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.grey,
                    BlendMode.color,
                  ))),
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        top: MediaQuery.of(context).size.height / 2.5,
        child: Container(
          height: MediaQuery.of(context).size.height / 3.4,
          color: Colors.white,
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        top: MediaQuery.of(context).size.height / 2.5 * 1.75,
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5,
          color: Color(0xffC5BCBC),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ..._buildBackgroud(),
          Positioned(
            left: 24,
            right: 0,
            top: MediaQuery.of(context).size.height / 3,
            child: Container(
              height: 100,
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 24, bottom: 24),
                    margin: EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "METAMORPHOSE",
                          style: GoogleFonts.openSans(
                              color: Colors.white, letterSpacing: 2),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "BIRD BROOCH",
                              style: GoogleFonts.merriweather(
                                  fontSize: 20,
                                  color: Colors.white,
                                  letterSpacing: 4),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.of(context).size.height / 2.1,
            child: Container(
              height: 32,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: WormEffect(
                      dotWidth: 10,
                      dotHeight: 10,
                      activeDotColor: primaryColor,
                      dotColor: secondaryColor),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 0,
            top: MediaQuery.of(context).size.height /1.85,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,

              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Best Sellers",style:GoogleFonts.merriweather(
                        fontSize: 24,
                        letterSpacing: 4),),
                    SizedBox(height: 24,),
                    Container(
                      height: 180,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder:
                      (context, index){
                        return Container(width:
                          130,
                        margin: EdgeInsets.only(right: 16),
                        color: Colors.blue,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Placeholder(),
                            ),
                            Expanded(
                              flex: 3,
                              child: Placeholder(),

                            )
                          ],
                        ),);
                      }),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}










