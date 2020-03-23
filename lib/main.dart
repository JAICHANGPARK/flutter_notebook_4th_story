import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_notebook_4th/ep399_digital_walet_app/main_page.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Colors.transparent
  ));
  runApp(DigitalWalletApp());

}
