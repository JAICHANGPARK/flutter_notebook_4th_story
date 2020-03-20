import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Colors.blueGrey[50],
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
                          style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold),
                        ))),
                    Expanded(
                      flex: 6,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 140,
                              margin: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400]), borderRadius: BorderRadius.circular(24)),
                              padding: EdgeInsets.all(18),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 42,
                                        width: 42,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          "72%",
                                          style: TextStyle(
                                            color: Color(0xff453deb),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "Restaurant",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "\$600.00",
                      style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 42),
                    ),
                    Text(
                      "March Expenses",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        width: MediaQuery.of(context).size.width,
                        child: BezierChart(
                          bezierChartScale: BezierChartScale.CUSTOM,
                          xAxisCustomValues: [0, 5, 10, 15, 20, 25, 30, 35, 40],
                          series: [
                            BezierLine(lineColor: Color(0xff453deb), dataPointStrokeColor: Color(0xff453deb), data: [
                              DataPoint<double>(value: 450.0, xAxis: 11),
                              DataPoint<double>(value: 600.0, xAxis: 12),
                              DataPoint<double>(value: 620.0, xAxis: 13),
                              DataPoint<double>(value: 350.0, xAxis: 14),
                              DataPoint<double>(value: 480.0, xAxis: 15),
                              DataPoint<double>(value: 520.0, xAxis: 16),
                              DataPoint<double>(value: 320.0, xAxis: 17),
                              DataPoint<double>(value: 420.0, xAxis: 17),
                              DataPoint<double>(value: 320.0, xAxis: 17),
                            ]),
                          ],
                          config: BezierChartConfig(
                              xLinesColor: Color(0xff453deb),
                              verticalIndicatorStrokeWidth: 2.0,
                              verticalIndicatorColor: Colors.grey,
                              showVerticalIndicator: true,
                              bubbleIndicatorColor: Color(0xff453deb),
                              footerHeight: 40,
                              bubbleIndicatorValueStyle: TextStyle(fontSize: 48, color: Colors.white),
                              bubbleIndicatorLabelStyle: TextStyle(fontSize: 48, color: Colors.white),
                              bubbleIndicatorTitleStyle: TextStyle(
                                fontSize: 48,
                              ),
                              xAxisTextStyle: TextStyle(
                                color: Colors.black,
                              )),
                        ))
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
