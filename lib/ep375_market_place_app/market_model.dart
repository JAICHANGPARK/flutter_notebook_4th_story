class MarketItem {
  String img;
  String itemTitle;
  String itemSubtitle;
  String price;
  bool isBanner;

  MarketItem(
      {this.img, this.itemTitle, this.itemSubtitle, this.price, this.isBanner});
}

List<MarketItem> marketItems = [
  MarketItem(
      img: "",
      itemTitle: "Corona",
      itemSubtitle: "Light",
      price: "14.99",
      isBanner: true),
  MarketItem(
      img: "",
      itemTitle: "Corona",
      itemSubtitle: "Light",
      price: "29.98",
      isBanner: false),
];

























