// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/flashride_items_page.dart';
import 'package:project_uts_online_transportation/pages/flashtaxi.dart';

import 'pages/loginpage.dart';
import 'pages/loadingpage.dart';
import 'package:project_uts_online_transportation/pages/account_page.dart';
import 'package:project_uts_online_transportation/pages/destinationcar.dart';
import 'package:project_uts_online_transportation/pages/flashcar_pickup.dart';
import 'package:project_uts_online_transportation/pages/history_page.dart';
import 'pages/startingpage.dart';
import 'pages/flashcar_page.dart';
import 'pages/order_page.dart';
import 'pages/flashpick.dart';
import 'pages/searchingdriver.dart';
import 'pages/flashride_page.dart';
import 'pages/imagebutton.dart';
import 'pages/moveperson_page.dart';
import 'pages/signuppage.dart';
import 'pages/forgotpasswordpage.dart';
import 'pages/landingpage.dart';
import 'pages/emailhbspage.dart';
import 'pages/template/templatehead.dart';
import 'pages/template/back-button.dart';
import 'pages/edit_profile_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child("users");

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "Poppins",
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          LandingPage.idScreen: (context) => LandingPage(),
          OrderPage.idScreen: (context) => OrderPage(),
          HistoryPage.idScreen: (context) => HistoryPage(),
          AccountPage.idScreen: (context) => AccountPage(),
        },
        home: SignupPage());
  }
}
