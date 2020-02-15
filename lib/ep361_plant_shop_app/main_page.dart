import 'package:dashed_container/dashed_container.dart';
import 'package:flutter/material.dart';

class PlantShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlantMainPage(),
    );
  }
}

class PlantMainPage extends StatefulWidget {
  @override
  _PlantMainPageState createState() => _PlantMainPageState();
}

class _PlantMainPageState extends State<PlantMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: MediaQuery.of(context).size.height / 2.3,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/20/13/38/furniture-731449_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 54,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Container(
                          height: 54,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add_alert,
                              color: Colors.green,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 24,
                    top: 170,
                    child: Container(
                      height: 62,
                      width: 3,
                      color: Colors.grey.shade400,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 24,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height / 2.1,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 29,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 52, top: 32, bottom: 24, right: 24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 1.5,
                                width: 28,
                                color: Colors.black,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text(
                                  "Best Choice",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "Monstera Deliciosa",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(""
                              "\$12.95",style: TextStyle(
                            fontSize: 20
                          ),),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Get your home holiday ready with this\n"
                                "statement plant available for a limited time at\n"
                                "a special price.",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  margin: EdgeInsets.all(4),
                                  child: DashedContainer(
                                    dashColor: Colors.green,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.whatshot, color: Colors.green,),
                                        SizedBox(width: 4,),
                                        Text("Medium",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ],
                                    ),
                                    
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: DashedContainer(
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Text("12"),
                                    ),

                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: DashedContainer(
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Text("Indoor"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Placeholder(),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 42,
                  top: 0,
                  child: Container(
                    height: 58,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: <Widget>[

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
