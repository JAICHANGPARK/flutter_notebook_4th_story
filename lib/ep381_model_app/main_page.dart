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

class _MainPageState extends State<MainPage> {
  AnimationController controller;
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
                  AnimatedIcon(progress: null, icon: null,

                  ),

                  Container(
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.red
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




























