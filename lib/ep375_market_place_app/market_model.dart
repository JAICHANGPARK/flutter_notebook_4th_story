class MarketItem {
  String market;
  String place;
  String img;
  String itemTitle;
  String itemSubtitle;
  String price;
  bool isBanner;

  MarketItem(
      {this.market,
      this.place,
      this.img,
      this.itemTitle,
      this.itemSubtitle,
      this.price,
      this.isBanner});
}

List<MarketItem> marketItems = [
  MarketItem(
      img: "",
      market: "GRAPE HILL LIQUORS",
      place: "23 Bond Street, Brooklyn, NY",
      itemTitle: "Corona",
      itemSubtitle: "Light",
      price: "14.99",
      isBanner: true),
  MarketItem(
      market: "STILL WATER LIQUORS",
      place: "15 Bond Street, lBrooklyn, NY",
      img: "",
      itemTitle: "Corona",
      itemSubtitle: "Light",
      price: "29.98",
      isBanner: false),
];

