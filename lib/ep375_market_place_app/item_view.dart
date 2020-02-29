import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep375_market_place_app/market_model.dart';

class MarketItemView extends StatelessWidget {
  final MarketItem item;

  MarketItemView({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.market,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        item.place,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    "\$${item.price}",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
