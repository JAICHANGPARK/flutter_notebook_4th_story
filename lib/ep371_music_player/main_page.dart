import 'package:flutter/material.dart';

Color backgroundColor = Color(0xff7800ee);

class MusicPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 48,
            top: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(42),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media0.giphy.com/media/DzVNG1mBlIPEQ/giphy.gif?cid=790b7611c56e7e124f919b235eb3057982e4cdaeee62b52e&rid=giphy.gif"),
                      fit: BoxFit.cover)),
            ),
          ),
//          6e00db
          Positioned(
            right: 48,
            top: MediaQuery.of(context).size.height / 2.4,
            child: Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  color: backgroundColor,
                  size: 48,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 48,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.7,
              decoration: BoxDecoration(
                  color: Color(0xff6e00db),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(42))),
            ),
          )
        ],
      ),
    );
  }
}












