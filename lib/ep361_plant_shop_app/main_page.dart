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
                    child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
                    padding: EdgeInsets.only(left: 24, top: 24, bottom: 24,
                    right: 24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
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
                          flex: 2,
                          child: Placeholder(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Placeholder(),
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
