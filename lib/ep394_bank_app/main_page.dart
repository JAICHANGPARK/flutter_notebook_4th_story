import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BudgetPage(),
    );
  }
}

class BudgetPage extends StatefulWidget {
  @override
  _BudgetPageState createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: BoxDecoration(
                    color: Color(0xff453deb),

                    /// 69 61 235
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(48),
                      topLeft: Radius.circular(48),
                    )),
                padding: EdgeInsets.all(24),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Set your budget",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(48),
                      topLeft: Radius.circular(48),
                    )),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Center(
                            child: Text(
                          "Categories",
                          style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight: FontWeight.bold),
                        ))),
                    Expanded(
                      flex: 6,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 160,
                              margin: EdgeInsets.all(16),
                              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
