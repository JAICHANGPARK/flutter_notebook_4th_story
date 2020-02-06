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
              SizedBox(height: deviceHeight / 4, child: Placeholder()),
              //shop information
              SizedBox(height: deviceHeight / 6, child: Placeholder()),

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
