import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep383_zomato_app/restaurant.dart';
import 'package:flutter_notebook_4th/ep383_zomato_app/top_banner.dart';
import 'package:google_fonts/google_fonts.dart';

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => ZomatoMainPage(),
      },
    );
  }
}

class ZomatoMainPage extends StatefulWidget {
  @override
  _ZomatoMainPageState createState() => _ZomatoMainPageState();
}

class _ZomatoMainPageState extends State<ZomatoMainPage> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: IndexedStack(index: pageIdx, children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add_location,
                          color: Colors.red,
                        ),
                        Text(
                          "657-Mars, Milkyway",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 3)
                        ]),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "Search for restaurants, cuisines...",
                          border: InputBorder.none,
                          hintStyle: GoogleFonts.montserrat(fontSize: 14)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 20,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text(
                                'Delivery',
                                style: GoogleFonts.montserrat(),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Self Pickup",
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: Container(
                    height: screenHeight / 4,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: bannerItems.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 8),
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: BoxDecoration(
                              color: bannerItems[index].bgColor,
                              image: bannerItems[index].img != "" ? DecorationImage(
                                  image: NetworkImage(bannerItems[index].img),
                                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3),
                                  BlendMode.darken),
                                  fit: BoxFit.cover):null,
                              borderRadius: BorderRadius.circular(8),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      bannerItems[index].tag,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: bannerItems[index].tagColor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(4),
                                          bottomRight: Radius.circular(4),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      bannerItems[index].title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 42,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      bannerItems[index].code,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      bannerItems[index].subtitle,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: screenHeight / 8,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            padding: EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey[300])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: CircleAvatar(),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    "Express\nDelivery",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            padding: EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey[300])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: CircleAvatar(),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    "Safety\nSealed",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            padding: EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey[300])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: CircleAvatar(),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    "Great\nOffers",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            padding: EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey[300])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: CircleAvatar(),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    "New\nArrivals",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            padding: EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.grey[300])),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: CircleAvatar(),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: Text(
                                    "Trending\nPlaces",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  child: Container(
                    height: screenHeight / 19,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                          height: double.infinity,
                          width: 64,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: screenHeight / 3,
                    child: ListView.builder(
                            itemCount: restaurantItems.length,
                        itemBuilder: (context, index) {
                      return Container(
                        height: screenHeight / 7.5,
                        margin: EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: NetworkImage(restaurantItems[index].img),
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(restaurantItems[index].title, style: TextStyle(

                                        fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Text(restaurantItems[index].subtitle, style: TextStyle(
                                        color: Colors.grey,
                                      fontSize: 12
                                    ),),
                                    Text(restaurantItems[index].about, style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12
                                    ),),
                                    Text(restaurantItems[index].sale, style: TextStyle(
                                      color: Colors.red
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 28,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(4)
                                ),
                                child: Center(
                                  child: Text(restaurantItems[index].rate, style: TextStyle(
                                    color: Colors.white,

                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 2"),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 3"),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text("Page 4"),
                )
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        currentIndex: pageIdx,
        onTap: (index) {
          setState(() {
            pageIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text("Order")),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run), title: Text("Go Out")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("Gold")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue), title: Text("Sneakpeek"))
        ],
      ),
    );
  }
}
