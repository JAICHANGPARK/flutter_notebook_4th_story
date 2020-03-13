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
  Popular(img: "", title: "Hanjk Goglio Shoes", lowPrice: "\$240", highPrice: "\$320"),
  Popular(img: "", title: "Super Dolor Long Pant", lowPrice: "\$170", highPrice: "\$230"),
  Popular(img: "", title: "Kuplux Merapi Mbake", lowPrice: "\$140", highPrice: "\$220"),
  Popular(img: "", title: "Hanjk Goglio Shoes", lowPrice: "\$240", highPrice: "\$320"),
];

List<Late> lateItems = [
  Late(img: "",
      title: "Green Salad Agliato",
      highPrice: "\$320",
      lowPrice: "\$240",
      from: "Iceland",
      isSaved: false,
      request: "36"),
  Late(img: "",
      title: "Dounut Kentang",
      highPrice: "\$320",
      lowPrice: "\$240",
      from: "Iceland",
      isSaved: true,
      request: "Argentina"),
  Late(img: "",
      title: "Jacket Anti Cool",
      highPrice: "\$320",
      lowPrice: "\$240",
      from: "Iceland",
      isSaved: false,
      request: "36"),
];




















