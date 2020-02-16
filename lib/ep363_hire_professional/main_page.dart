import 'package:flutter/material.dart';
class HireProfessionalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Placeholder(),
          ),
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Placeholder(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Placeholder(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
























