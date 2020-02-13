import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:video_player/video_player.dart';

class VideoProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VPMainPage(),
    );
  }
}

class VPMainPage extends StatefulWidget {
  @override
  _VPMainPageState createState() => _VPMainPageState();
}

class _VPMainPageState extends State<VPMainPage> {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoPlayerController = VideoPlayerController.network(
        'https://player.vimeo.com/external/135732201.mobile.mp4?s=d221063caaaf7da1c2155f00ffd08b56a12436c5&profile_id=116')
      ..initialize().then((value) {
        setState(() {
          _videoPlayerController.play();
        });
      })
      ..addListener(() {
        setState(() {});
      });

    _videoPlayerController.setLooping(true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: 680,
        minHeight: 140,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
        panel: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 32,
              child: Center(
                child: Container(
                  height: 4,
                  width: 58,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52, right: 52, top: 16),
              child: Container(
                height: MediaQuery.of(context).size.height / 7,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Icon(Icons.account_circle,
                                  color: Colors.blue,),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text("LinkedIn"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Icon(Icons.email ,color: Colors.blue,),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text("Email"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade200,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                child: Icon(Icons.call, color: Colors.blue,),
                              ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text("Call"),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text("About", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Expanded(
                      flex: 10,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 16, right: 8),
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  offset: Offset(0,  4),
                                )
                              ]
                            ),
                            padding: EdgeInsets.only(
                              left: 24,
                              top: 24
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "9.7",
                                        style: TextStyle(
                                          color: Colors.blue.shade400,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 42,
                                        )
                                      ),
                                      TextSpan(
                                        text: "/10",
                                          style: TextStyle(
                                            color: Colors.blue.shade400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            textBaseline: TextBaseline.ideographic
                                          )
                                      )
                                    ]
                                  )
                                ),
                                Spacer(),
                                Text("Assessment\nScore"),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 16, right: 8),
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                    offset: Offset(0,  4),
                                  )
                                ]
                            ),
                            child: Column(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.8,
              child: Placeholder(),
            ),
          ],
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 0,
              child: _videoPlayerController.value.initialized
                  ? VideoPlayer(_videoPlayerController)
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            ),
            Positioned(
              left: 24,
              bottom: 172,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mary",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Henderson",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Head of Human Resources",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_location,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        "PURCHASE, NY, USA",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 160),
        child: FloatingActionButton(
          child: Icon(Icons.stop),
          onPressed: () {
            _videoPlayerController.pause();
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
