import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarvieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MarvieHome(),
    );
  }
}

class MarvieHome extends StatefulWidget {
  @override
  _MarvieHomeState createState() => _MarvieHomeState();
}

class _MarvieHomeState extends State<MarvieHome> {
  double viewScale = 1.0;
  double viewLeft = 0.0;
  double viewRight = 0.0;
  double viewTop = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 24,
            top: 24,
            right: 0,
            bottom: 24,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 34,),
                  Container(
                    height: 84,
                    width: 84,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text("Dreamwalker", style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 18
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.shop),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Shop"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.shop),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Payment"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.shop),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Chat"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.shop),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Notifications"),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Settings"),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 34,),
                  Container(
                    width: 140,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text("Next",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: viewTop,
            left: viewLeft,
            bottom: 0,
            right: viewRight,
            child: Transform.rotate(
              angle: -0.2,
              child: Transform.scale(
                scale: viewScale,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(24),
                  ),

                  child: Center(
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          viewScale = 0.8;
                          viewRight = -160;
                          viewTop = 120;
                          viewLeft = MediaQuery.of(context).size.width / 2;
                        });
                      },
                      color: Colors.tealAccent,
                      child: Text("Show Menu"),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


















