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
                        right: 0,
                        top: 100,
                        bottom: 100,
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border(
                                top: BorderSide(color: Colors.white, width: 24),
                                left:
                                    BorderSide(color: Colors.white, width: 24),
                                bottom:
                                    BorderSide(color: Colors.white, width: 24),
                              )),
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
                                top: BorderSide(color: Colors.white, width: 24),
                                right:
                                    BorderSide(color: Colors.white, width: 24),
                                bottom:
                                    BorderSide(color: Colors.white, width: 24),
                              )),
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
