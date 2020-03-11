import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalBuyerAssistance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/': (context) => PBAMainPage(),
      },
    );
  }
}

class PBAMainPage extends StatefulWidget {
  @override
  _PBAMainPageState createState() => _PBAMainPageState();
}

class _PBAMainPageState extends State<PBAMainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Container(
          height: 64,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: pageIndex == 0 ? Colors.teal : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: pageIndex == 1 ? Colors.teal : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: pageIndex == 2 ? Colors.teal : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: pageIndex == 3 ? Colors.teal : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
