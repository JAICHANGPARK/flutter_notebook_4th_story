

import 'dart:ui';
import 'package:flutter/material.dart';

class TopBanner{
  String img;
  String title;
  String tag;

  String code;
  String subtitle;
  Color tagColor;
  Color bgColor;

  TopBanner(this.img, this.title, this.tag, this.tagColor, this.code, this.subtitle, this.bgColor);

}

List<TopBanner> bannerItems = [
  TopBanner(
    "https://cdn.pixabay.com/photo/2016/03/05/19/02/abstract-1238247__340.jpg",
    "EPIC\nDEAL",
    "EXCLUSIVE",
    Colors.red,
    "40% OFF",
    "On legendary restaurant",
    Colors.red,
  ),

  TopBanner(
      "",
      "40%\nOFF",
      "OFFER",
      Colors.green,
      "CODE: DREAMWALKER",
      "Free Delivery",
    Colors.teal
  ),

];
















