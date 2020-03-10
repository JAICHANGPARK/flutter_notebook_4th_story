import 'package:flutter/material.dart';

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FashionMainPage(),
    );
  }
}

class FashionMainPage extends StatefulWidget {
  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SafeArea(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.menu),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.person_outline),
                      Spacer(),
                      Text(
                        "LoveTheSales",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/10/16/04/05/girl-1744349_960_720.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: VerticalDivider(),
                      ),
                      Expanded(
                        child: Placeholder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: VerticalDivider(),
                      ),
                      Expanded(
                        child: Placeholder(),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: VerticalDivider(),
                      ),
                      Expanded(
                        child: Placeholder(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: VerticalDivider(),
                      ),
                      Expanded(
                        child: Placeholder(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
