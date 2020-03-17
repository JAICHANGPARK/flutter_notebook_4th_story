import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarterUiKitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height/2,
            child: Container(
              color: Colors.black,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(16),
                    height: MediaQuery.of(context).size.height / 3.5,

                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Rosalia's Top Songs", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.arrow_drop_up, color: Colors.green,),
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Auto Cuture", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                ),
                                Spacer(),
                                CircleAvatar(radius: 18,
                                backgroundColor: Colors.grey[500],
                                child: Icon(Icons.more_vert, color: Colors.white,),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.arrow_drop_down, color: Colors.pink,),
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Millionaria", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                ),
                                Spacer(),
                                CircleAvatar(radius: 18,
                                  backgroundColor: Colors.grey[500],
                                  child: Icon(Icons.more_vert, color: Colors.white,),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.arrow_drop_up, color: Colors.green,),
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Can Altura", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                ),
                                Spacer(),
                                CircleAvatar(radius: 18,
                                  backgroundColor: Colors.grey[500],
                                  child: Icon(Icons.more_vert, color: Colors.white,),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.arrow_drop_up, color: Colors.green,),
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Auto Cuture", style: TextStyle(
                                    color: Colors.white,
                                  ),),
                                ),
                                Spacer(),
                                CircleAvatar(radius: 18,
                                  backgroundColor: Colors.grey[500],
                                  child: Icon(Icons.more_vert, color: Colors.white,),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.blue,

                    child: Column(
                      children: <Widget>[
                        
                      ],
                    ),
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
              height: MediaQuery.of(context).size.height / 1.9,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/09/10/11/11/musician-1658887_960_720.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_left,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 38,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "FOLLOWING",
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text("Rosalia",style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("16k Followers", style: TextStyle(
                      color: Colors.white,
                    ),),
                    SizedBox(height: 24,),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(Icons.play_arrow),
                      ),
                    ),
                    SizedBox(height: 24,),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 16,
            child: Container(
              height: 52,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32)
              ),
              child: Row(
                children: <Widget>[
                  CircleAvatar(

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Playing Now",style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),),
                        Text("Pookie",style: TextStyle(
                          color: Colors.grey
                        ),),
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.pause, color: Colors.grey,),
                  ),
                  SizedBox(width: 8,),
                  Container(height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.skip_next, ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



















