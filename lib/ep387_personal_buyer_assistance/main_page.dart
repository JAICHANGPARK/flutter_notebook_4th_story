import 'package:flutter/material.dart';


class PersonalBuyerAssistance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {

        '/' : (context)=>PBAMainPage(),

      },

    );
  }
}

class PBAMainPage extends StatefulWidget {
  @override
  _PBAMainPageState createState() => _PBAMainPageState();
}

class _PBAMainPageState extends State<PBAMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}