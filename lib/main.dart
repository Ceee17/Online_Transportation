import 'package:flutter/material.dart';
import 'pages/flashcar_page.dart';
import 'pages/startingpage.dart';
import 'pages/flashcar_page.dart';
import 'pages/order_page.dart';
import 'pages/flashpick.dart';
import 'pages/searchingdriver.dart';
import 'pages/templatehead.dart';
import 'pages/flashride_page.dart';
import 'pages/moveperson_page.dart';
import 'pages/imagebutton.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "Poppins",
        ),
        debugShowCheckedModeBanner: false,
        home: FlashpickPage());
  }
}
