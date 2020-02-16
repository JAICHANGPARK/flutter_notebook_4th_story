import 'package:flutter/material.dart';
class HireProfessionalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) => HPMainPage(),
      },
    );
  }
}

class HPMainPage extends StatefulWidget {
  @override
  _HPMainPageState createState() => _HPMainPageState();
}

class _HPMainPageState extends State<HPMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16,
                        vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.menu),
                            Spacer(),
                            Text("Find a Professional",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 9,
                            child: Container(
                              margin: EdgeInsets.only(left: 16, bottom: 8, top: 8),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade50,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: double.infinity,
                                      margin: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8)
                                      ),
                                      child: Icon(Icons.search, color: Colors.white,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: double.infinity,
                              margin: EdgeInsets.only(left: 16, right: 16, bottom: 8,
                              top: 8),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade50,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Icon(Icons.tune,color: Colors.blueGrey,),

                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Placeholder(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Placeholder(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
























