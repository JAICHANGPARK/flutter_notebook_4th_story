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
        maxHeight: 620,
        panel: Center(
          child: Text("This is the sliding Widget"),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.stop),
        onPressed: (){
          _videoPlayerController.pause();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}


























