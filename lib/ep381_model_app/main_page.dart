import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
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
                  )
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Placeholder(),
            )
          ],
        ),
      ),
    );
  }
}




























