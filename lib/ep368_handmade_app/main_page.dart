import 'package:flutter/material.dart';

class HandMadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/' : (context) => HandMadeMainPage(),
      },
    );
  }
}


class HandMadeMainPage extends StatefulWidget {
  @override
  _HandMadeAppState createState() => _HandMadeAppState();
}

class _HandMadeAppState extends State<HandMadeMainPage> {
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
                  image: NetworkImage("https://cdn.pixabay.com/photo/2015/06/09/20/36/portrait-804062_960_720.jpg"),
                  fit: BoxFit.cover,
                )
              ),
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
                  Icon(Icons.arrow_back_ios,color: Colors.white,),
                  Icon(Icons.add_shopping_cart,color: Colors.white,),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}



















