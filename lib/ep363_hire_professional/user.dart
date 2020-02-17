import 'package:flutter/material.dart';


class User{
  String img;
  String name;
  String subName;
  int reviews;
  String lastestReviews;

  User({this.img, this.name, this.reviews, this.lastestReviews, this.subName});


}
List<User> hireUsers = [

  User(
    img: "https://cdn.pixabay.com/photo/2015/03/03/08/55/portrait-photography-657116__340.jpg",
    name: "Judith Cooper",
    reviews: 87,
    subName: "Parker Rd",
    lastestReviews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),

  User(
      img: "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703__340.jpg",
      name: "Lee Fisher",
      subName: "Salmon",
      reviews: 168,
      lastestReviews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),

  User(
      img: "https://cdn.pixabay.com/photo/2019/08/23/13/45/koreanfashion-4425752__340.jpg",
      name: "Dream Walker",
      subName: "Flutter",
      reviews: 97,
      lastestReviews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),

  User(
      img: "https://cdn.pixabay.com/photo/2018/02/20/20/52/people-3168830__340.jpg",
      name: "Bae Juen",
      reviews: 154,
      lastestReviews: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  ),






];