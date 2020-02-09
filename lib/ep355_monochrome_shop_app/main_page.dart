import 'package:flutter/material.dart';

class MonochromeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MonochromeShopHome(),
    );
  }
}

class MonochromeShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 34,
            left: 16,
            right: 16,
            child: Container(
              height: 100,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Text(
                      "LOSER",
                      style: TextStyle(
                        fontSize: 64,
                        letterSpacing: -6,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "V",
                      style: TextStyle(
                        fontSize: 84,
                        letterSpacing: -8,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            right: 24,
            child: Container(
              height: 86,
              width: 86,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "explore",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 4,
            bottom: 4,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/01/04/14/35/fashion-238553__340.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            right: 0,
            bottom: MediaQuery.of(context).size.height / 3.5,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 2.8,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/06/17/09/54/beauty-1462986__340.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 5)),
            ),
          ),
          Positioned(
            left: 0,
            top: 136,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.4,
              height: MediaQuery.of(context).size.height / 3.4,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 5),
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.color),
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/03/09/10/22/two-women-1246024__340.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2.4 + 16,
            top: 136,
            right: 0,
            child: Container(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Men's",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Blazers",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              height: 100,
              width: 100,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Women's",style: TextStyle(
                    fontSize: 18
                  ),),
                  Text("Blazers",style: TextStyle(
                    fontSize: 18
                  ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

























