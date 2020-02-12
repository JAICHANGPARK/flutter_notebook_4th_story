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
        minHeight: 120,
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
              padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Container(
                height: MediaQuery.of(context).size.height / 6,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Container(
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Placeholder(),
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
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Placeholder(),
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
                                color: Colors.blue,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Placeholder(),
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
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              child: Placeholder(),
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
              bottom: 140,
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
