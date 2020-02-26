import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class PlayPage extends StatefulWidget {
  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 16,
            right: 16,
            top: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                Icon(Icons.favorite_border),
              ],
            ),
          ),

          Positioned(
            left: 64,
            right: 64,
            top: 120,
            child: Container(
              height: 260,
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947__340.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}























