import 'package:flutter/material.dart';

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (BuildContext context) => ZomatoMainPage(),
      },
    );
  }
}

class ZomatoMainPage extends StatefulWidget {
  @override
  _ZomatoMainPageState createState() => _ZomatoMainPageState();
}

class _ZomatoMainPageState extends State<ZomatoMainPage> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 4, horizontal: 8
                ),
                child: Container(
                  height: screenHeight / 20,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 4, horizontal: 8
                ),
                child: Container(
                  height: screenHeight / 15,
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4, horizontal: 8
                ),
                child: Container(
                  height: screenHeight / 15,
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        currentIndex: pageIdx,
        onTap: (index) {
          setState(() {
            pageIdx = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text("Order")),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run), title: Text("Go Out")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("Gold")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue), title: Text("Sneakpeek"))
        ],
      ),
    );
  }
}
