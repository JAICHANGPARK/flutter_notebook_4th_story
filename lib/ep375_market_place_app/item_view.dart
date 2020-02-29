import 'package:flutter/material.dart';


class MarketItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          color: Colors.blue
      ),
    );
  }
}
