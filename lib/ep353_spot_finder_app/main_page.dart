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
    var deviceHeight =MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[

              //appbar
              SizedBox(
                height: deviceHeight / 10,
                child: Placeholder()
              ),
              //Image
              SizedBox(
                  height: deviceHeight / 4,
                  child: Placeholder()
              ),
              //shop information
              SizedBox(
                  height: deviceHeight / 6,
                  child: Placeholder()
              ),

              //contact
              SizedBox(
                  height: deviceHeight / 10,
                  child: Placeholder()
              ),
              // shop detail list
              SizedBox(
                  height: deviceHeight / 9,
                  child: Placeholder()
              ),
              SizedBox(
                  height: deviceHeight / 20,
                  child: Placeholder()
              ),
              SizedBox(
                  height: deviceHeight / 2.5,
                  child: Placeholder()
              ),

            ],
          ),
        ),
      ),
    );
  }
}

























