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
                height: MediaQuery.of(context).size.height / 2.9,
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
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(48),
                      topLeft: Radius.circular(48),
                    )),
                child: Column(
                  children: <Widget>[],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
