
class Popular{
  String img;
  String title;
  String lowPrice;
  String highPrice;

  Popular({this.img, this.title, this.lowPrice, this.highPrice});

}

class Late{
  String img;
  String title;
  String lowPrice;
  String highPrice;
  String from ;
  String request;
  bool isSaved;

  Late({this.img, this.title, this.lowPrice, this.highPrice, this.from, this.request, this.isSaved});
}