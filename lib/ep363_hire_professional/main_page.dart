import 'package:flutter/material.dart';
class HireProfessionalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => HPMainPage(),
      },
    );
  }
}

class HPMainPage extends StatefulWidget {
  @override
  _HPMainPageState createState() => _HPMainPageState();
}

class _HPMainPageState extends State<HPMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

