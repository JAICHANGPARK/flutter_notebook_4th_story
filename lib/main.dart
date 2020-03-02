import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_notebook_4th/ep375_market_place_app/main_page.dart';
import 'package:flutter_notebook_4th/ep378_cloud_app/cloud_main_page.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:  Colors.grey[50]
  ));
  runApp(CloudManagerApp());

}
