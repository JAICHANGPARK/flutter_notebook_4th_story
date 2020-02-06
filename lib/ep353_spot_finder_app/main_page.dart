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
                      bottom: 2,
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
                        SizedBox(height: 16,),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                          overflow: TextOverflow.fade,
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),

              //contact
              SizedBox(height: deviceHeight / 10, child: Placeholder()),
              // shop detail list
              SizedBox(height: deviceHeight / 9, child: Placeholder()),
              SizedBox(height: deviceHeight / 20, child: Placeholder()),
              SizedBox(height: deviceHeight / 2.5, child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
