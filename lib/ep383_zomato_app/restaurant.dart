class Restaurant{

  String img;
  String title;
  String subtitle;
  String about;
  String rate;
  String sale;

  Restaurant(this.img, this.title, this.subtitle, this.about, this.rate,
      this.sale);

}

List<Restaurant> restaurantItems= [
  Restaurant("https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__340.jpg", "Le Tavern Grill", "Fast Food, Cafe, Chinese", "\$230 per person | 35-45 mins", "4.7","50% OFF USE CODE ZOMATO",),
  Restaurant("https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305__340.jpg", "Theobroma Club", "North Indian, South Indian", "\$430 per person | 35-45 mins", "4.3","50% OFF USE CODE ZOMATO",),
];