import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DigitalWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWalletHome(),
    );
  }
}

class MyWalletHome extends StatefulWidget {
  @override
  _MyWalletHomeState createState() => _MyWalletHomeState();
}

class _MyWalletHomeState extends State<MyWalletHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    )),
                padding: EdgeInsets.only(left: 16, top: 39, right: 16, bottom: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hello!",
                          style: GoogleFonts.montserrat(color: Colors.grey[100]),
                        ),
                        Text(
                          "Dreamwalker",
                          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: MediaQuery.of(context).size.height / 6,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 2,
                    )
                  ]),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        right: 16,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width / 2,
                          child: PieChart(
                            PieChartData(
                                centerSpaceRadius: 40,
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                sectionsSpace: 0,
                                startDegreeOffset: -120,
                                sections: [
                                  PieChartSectionData(value: 35, color: Colors.indigo, title: "35%"),
                                  PieChartSectionData(value: 15, color: Colors.blue, title: "15%"),
                                  PieChartSectionData(value: 45, color: Colors.yellow, title: "45%"),
                                ]),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "\$498.57",
                              style: GoogleFonts.montserrat(
                                  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo),
                            ),
                            Text(
                              "Available Balance",
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Spent",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              child: Text(
                                "\$1.598",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold, fontSize: 18, color: Colors.indigo),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Earned",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                              child: Text(
                                "\$5.984",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold, fontSize: 18, color: Colors.indigo),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: MediaQuery.of(context).size.height / 3.5,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                    ]),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Services",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: GridView.count(
                            crossAxisCount: 4,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 1.15,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                              Container(
                                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: MediaQuery.of(context).size.height / 3.5,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 2,
                        spreadRadius: 2,
                      )
                    ]),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Services",
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo,
                                ),
                              ),
                              Text(
                                "View all",
                                style: TextStyle(fontSize: 12, color: Colors.indigoAccent),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: ListView.builder(itemBuilder: (context, index) {
                            return Container(
                              height: 42,
                              margin: EdgeInsets.only(bottom: 9),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration:
                                        BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[Text("Dreamwalker",
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                          color: Colors.indigo
                                      ),), Text("20 March",style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                      ),)],
                                    ),
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("-\$50.00",style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                      ),),
                                      Text("-\$5479",style: GoogleFonts.montserrat(
                                          fontSize: 10,
                                        color: Colors.grey
                                      ),),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
