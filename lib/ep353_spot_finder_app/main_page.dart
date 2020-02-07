import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpotFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpotFinderMainPage(),
    );
  }
}

class SpotFinderMainPage extends StatefulWidget {
  @override
  _SpotFinderMainPageState createState() => _SpotFinderMainPageState();
}

class _SpotFinderMainPageState extends State<SpotFinderMainPage> {
  var imgList = [
    "https://cdn.pixabay.com/photo/2016/02/19/11/40/coffee-shop-1209863__340.jpg",
    "https://cdn.pixabay.com/photo/2016/01/19/15/15/meetings-1149198__340.jpg",
    "https://cdn.pixabay.com/photo/2015/10/12/15/14/coffee-984328__340.jpg",
    "https://cdn.pixabay.com/photo/2015/06/08/15/24/coffee-802057__340.jpg",
    "https://cdn.pixabay.com/photo/2016/02/19/11/40/coffee-shop-1209863__340.jpg",
    "https://cdn.pixabay.com/photo/2016/01/19/15/15/meetings-1149198__340.jpg",
    "https://cdn.pixabay.com/photo/2015/10/12/15/14/coffee-984328__340.jpg",
    "https://cdn.pixabay.com/photo/2015/06/08/15/24/coffee-802057__340.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //appbar
              SizedBox(
                  height: deviceHeight / 10,
                  width: deviceWidth,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              border: Border.all(), shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              size: 20,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              border: Border.all(), shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              border: Border.all(), shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.save_alt,
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              //Image
              SizedBox(
                  height: deviceHeight / 2.8,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 16,
                      bottom: 24,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2015/05/15/14/55/cafe-768771__340.jpg"),
                            fit: BoxFit.cover)),
                  )),
              //shop information
              SizedBox(
                  height: deviceHeight / 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "Le Paris Cafe",
                              style: TextStyle(fontSize: 24),
                            ),
                            Text(
                              "See on a map",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.teal),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          overflow: TextOverflow.fade,
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),

              //contact
              SizedBox(
                  height: deviceHeight / 10,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "City Center, Warsaw",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 14,
                                  color: Colors.orangeAccent,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "(478)",
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                              border: Border.all(), shape: BoxShape.circle),
                          child: Center(
                            child: Icon(
                              Icons.call,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              // shop detail list
              SizedBox(
                  height: deviceHeight / 12,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 24),
                    itemCount: imgList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 90,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: NetworkImage(imgList[index]),
                                fit: BoxFit.cover)),
                      );
                    },
                  )),
              SizedBox(height: deviceHeight / 20),
              SizedBox(
                height: deviceHeight / 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "Our menu",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: deviceHeight / 2.5, child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
