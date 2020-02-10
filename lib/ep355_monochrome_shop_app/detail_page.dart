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
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.clear),
                  onPressed: (){
                    Navigator.pop(context);
                  },)
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Placeholder(),
            ),
            Expanded(
              flex: 1,
              child: Placeholder(),
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
