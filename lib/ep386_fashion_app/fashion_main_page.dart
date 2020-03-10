import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FashionMainPage(),
    );
  }
}

class FashionMainPage extends StatefulWidget {
  @override
  _FashionMainPageState createState() => _FashionMainPageState();
}

class _FashionMainPageState extends State<FashionMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: SafeArea(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.menu),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.person_outline),
                      Spacer(),
                      Text(
                        "LoveTheSales",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.search)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.15), BlendMode.darken),
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/10/16/04/05/girl-1744349_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text(
                    "Play less for the\n brands you love",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: MaterialButton(
                      minWidth: 190,
                      child: Text(
                        "Start Shopping",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      color: Colors.green,
                      padding: EdgeInsets.all(18),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 38, bottom: 16, left: 16, right: 16),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Text(
                          "Trustpolot",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rated 4.8 stars by over 60,000 users",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyPAfmD5t7zLSewzTPq30d9w8njciGmOHBP13bqsaCfJCQIluo"
                            ,fit: BoxFit.fitWidth,),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: VerticalDivider(),
                        ),
                        Expanded(
                            child: Image.network(
                                "https://dg4teqrgjt4wz.cloudfront.net/app/uploads/2019/05/02133741/Hugo-Boss-Logo.jpg",fit: BoxFit.fitHeight)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: VerticalDivider(),
                        ),
                        Expanded(
                          child: Image.network(
                              "https://www.turkibazaar.com/storage/media/9puobYEdk7AQMNtc15OOfTorf407ATHFdUGbPHKg.jpeg"),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.network(
                              "https://m.media-amazon.com/images/S/aplus-media/vc/149b001d-17eb-49c8-ad6b-9aa0fffb5d42.__CR1,0,2928,1200_PT0_SX1464_V1___.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: VerticalDivider(),
                        ),
                        Expanded(
                          child: Image.network(
                            "https://seoul-p-studio.bunjang.net/product/83400833_12_1561745670_w640.jpg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: VerticalDivider(),
                        ),
                        Expanded(
                          child: Image.network(
                            "https://i.pinimg.com/originals/39/be/27/39be279f8290ec3d1e2072dc1d2df99a.jpg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
