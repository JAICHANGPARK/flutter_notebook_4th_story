import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_notebook_4th/ep387_personal_buyer_assistance/main_page.dart';
import 'package:flutter_notebook_4th/ep390_doko_app/main_page.dart';
import 'package:flutter_notebook_4th/ep392_starter_ui_kit/main_page.dart';
import 'package:flutter_notebook_4th/ep394_bank_app/main_page.dart';
import 'package:flutter_notebook_4th/ep396_calendar_app/main_page.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Colors.transparent
  ));
  runApp(CalendarApp());

}
