import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep355_monochrome_shop_app/detail_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Wear {
  String img;
  String price;
  String name;

  Wear({this.img, this.price, this.name});
}

List<Wear> items = [
  Wear(
      img:
          "https://cdn.pixabay.com/photo/2017/08/06/09/51/blazer-2590798__340.jpg",
      price: "134",
      name: "Retro Blazer"),
  Wear(
      img:
          "https://cdn.pixabay.com/photo/2017/08/10/08/00/suit-2619784__340.jpg",
      price: "365",
      name: "Fashion Blazer"),
  Wear(
      img:
          "https://cdn.pixabay.com/photo/2016/07/19/10/48/girl-1527959__340.jpg",
      price: "428",
      name: "Classic Blazer"),
  Wear(
      img:
          "https://cdn.pixabay.com/photo/2016/03/23/08/34/beautiful-1274361__340.jpg",
      price: "122",
      name: "Modern Blazer"),
  Wear(
      img:
          "https://cdn.pixabay.com/photo/2017/08/06/09/51/blazer-2590798__340.jpg",
      price: "134",
      name: "Retro Blazer"),
  Wear(
      img:
          "https://cdn.pixabay.com/photo/2017/08/06/09/51/blazer-2590798__340.jpg",
      price: "134",
      name: "Retro Blazer"),
  Wear(
      img:
      "https://cdn.pixabay.com/photo/2016/07/19/10/48/girl-1527959__340.jpg",
      price: "428",
      name: "Classic Blazer"),
  Wear(
      img:
      "https://cdn.pixabay.com/photo/2016/03/23/08/34/beautiful-1274361__340.jpg",
      price: "122",
      name: "Modern Blazer"),
  Wear(
      img:
      "https://cdn.pixabay.com/photo/2016/07/19/10/48/girl-1527959__340.jpg",
      price: "428",
      name: "Classic Blazer"),
  Wear(
      img:
      "https://cdn.pixabay.com/photo/2016/03/23/08/34/beautiful-1274361__340.jpg",
      price: "122",
      name: "Modern Blazer"),
  Wear(
      img:
      "https://cdn.pixabay.com/photo/2016/07/19/10/48/girl-1527959__340.jpg",
      price: "428",
      name: "Classic Blazer"),
  Wear(
      img:
      "https://cdn.pixabay.com/photo/2016/03/23/08/34/beautiful-1274361__340.jpg",
      price: "122",
      name: "Modern Blazer"),
];

class WomensBlazersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.grey.shade500,
                    ),
                    Text(
                      "Women's Blazers",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 13,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: StaggeredGridView.countBuilder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ItemDetailPage(
                            wear: items[index],
                          )
                        ));
                      },
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(items[index].img),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black, BlendMode.color))),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("\$ ${items[index].price}"),
                                  Text("${items[index].name}")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: items.length,
                  crossAxisCount: 4,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  staggeredTileBuilder: (int index) {
                    return new StaggeredTile.count(2, index.isEven ? 4 : 3);
                  },
                ),
//                child: GridView.builder(
//                  itemCount:items.length,
//                  itemBuilder: (BuildContext context, int index) {
//                    return Container(
//                      child: Column(
//                        children: <Widget>[
//                          Expanded(
//                            flex: 8,
//                            child: Container(
//                              decoration: BoxDecoration(
//                                image: DecorationImage(
//                                  image: NetworkImage(
//                                    items[index].img
//                                  ),
//                                  fit: BoxFit.cover,
//                                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.color)
//                                )
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                Text("\$ ${items[index].price}"),
//                                Text("${items[index].name}")
//                              ],
//                            ),
//                          )
//                        ],
//                      ),
//                    ) ;
//                  },
//                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                    crossAxisCount: 2,
//                    childAspectRatio: 0.55,
//                    crossAxisSpacing: 16,
//                    mainAxisSpacing: 16
//                  ),
//
//                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class searcher extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
