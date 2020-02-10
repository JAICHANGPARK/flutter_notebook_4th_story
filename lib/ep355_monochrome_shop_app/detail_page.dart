import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep355_monochrome_shop_app/entered_page.dart';

class ItemDetailPage extends StatelessWidget {
  final Wear wear;

  ItemDetailPage({this.wear});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
                    Text(
                      "${wear.name}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(wear.img),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.color)),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 7,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}



















