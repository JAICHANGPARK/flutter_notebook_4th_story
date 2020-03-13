class Popular {
  String img;
  String title;
  String lowPrice;
  String highPrice;

  Popular({this.img, this.title, this.lowPrice, this.highPrice});
}

class Late {
  String img;
  String title;
  String lowPrice;
  String highPrice;
  String from;

  String request;
  bool isSaved;

  Late({this.img, this.title, this.lowPrice, this.highPrice, this.from, this.request, this.isSaved});
}

List<Popular> popularItems = [
  Popular(img: "https://cdn.pixabay.com/photo/2013/09/12/19/57/boots-181744__340.jpg", title: "Hanjk Goglio Shoes", lowPrice: "\$240", highPrice: "\$320"),
  Popular(img: "https://cdn.pixabay.com/photo/2015/03/26/10/38/girl-691712__340.jpg", title: "Super Dolor Long Pant", lowPrice: "\$170", highPrice: "\$230"),
  Popular(img: "https://cdn.pixabay.com/photo/2017/03/07/13/38/landscape-2124022__340.jpg", title: "Kuplux Merapi Mbake", lowPrice: "\$140", highPrice: "\$220"),
  Popular(img: "https://cdn.pixabay.com/photo/2020/02/10/20/28/gozdzik-stone-4837602__340.jpg", title: "Hanjk Goglio Shoes", lowPrice: "\$240", highPrice: "\$320"),
];

List<Late> lateItems = [
  Late(img: "https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505__340.jpg",
      title: "Green Salad Agliato",
      highPrice: "\$320",
      lowPrice: "\$240",
      from: "Iceland",
      isSaved: false,
      request: "36"),
  Late(img: "https://cdn.pixabay.com/photo/2018/09/16/07/21/donut-3680829__340.jpg",
      title: "Dounut Kentang",
      highPrice: "\$320",
      lowPrice: "\$240",
      from: "Iceland",
      isSaved: true,
      request: "Argentina"),
  Late(img: "https://cdn.pixabay.com/photo/2016/11/29/01/34/fashion-1866572__340.jpg",
      title: "Jacket Anti Cool",
      highPrice: "\$320",
      lowPrice: "\$240",
      from: "Iceland",
      isSaved: false,
      request: "36"),
];




















