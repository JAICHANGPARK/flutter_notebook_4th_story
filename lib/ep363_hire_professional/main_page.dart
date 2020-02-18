import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep363_hire_professional/user.dart';

class HireProfessionalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HPMainPage(),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.menu),
                            Spacer(),
                            Text(
                              "Find a Professional",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                              margin:
                                  EdgeInsets.only(left: 16, bottom: 8, top: 8),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade50,
                                  borderRadius: BorderRadius.circular(8)),
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
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
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
                              margin: EdgeInsets.only(
                                  left: 16, right: 16, bottom: 8, top: 8),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade50,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.tune,
                                color: Colors.blueGrey,
                              ),
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
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 1.2),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "109 Furniture",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Assemblers Near You",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: hireUsers.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.all(16),
                                    width:
                                        MediaQuery.of(context).size.width / 1.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                            child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                margin: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: Colors.red,
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                          hireUsers[index].img,
                                                        ),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 9,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    hireUsers[index].name,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                    hireUsers[index].subName,
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )),
                                        Divider(
                                          height: 2,
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              left: 16
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orangeAccent,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orangeAccent,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orangeAccent,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orangeAccent,
                                                      size: 15,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.orangeAccent,
                                                      size: 15,
                                                    ),
                                                    Text(
                                                      "(${hireUsers[index].reviews} reviewers)",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 16),
                                                  child: Text("LATEST REVIEW",style: TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.
                                                    only(
                                                    top: 8,
                                                    right: 8
                                                  ),
                                                  child: Text(hireUsers[index].lastestReviews,
                                                  style: TextStyle(
                                                    fontSize: 10,

                                                  ),
                                                  overflow: TextOverflow.clip,),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16,
                                              top: 8,
                                              bottom: 8
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Expanded(
                                                    flex: 1,
                                                    child: Text("BERIFIED BY",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blueGrey
                                                    ),)),
                                                Expanded(
                                                    flex: 1,
                                                    child: ListView.builder(
                                                      itemCount: 5,
                                                      scrollDirection: Axis.horizontal,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          height: 24,
                                                          width: 24,
                                                          margin: EdgeInsets.only(right: 8),
                                                          decoration: BoxDecoration(
                                                            color: Colors.red,
                                                            shape: BoxShape.circle

                                                          ),
                                                        );
                                                      },
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              margin: EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Check Availabillity",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        )),
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
