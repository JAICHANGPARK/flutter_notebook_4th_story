import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_notebook_4th/ep383_zomato_app/main_pge.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Colors.white
  ));
  runApp(ZomatoApp());

}
