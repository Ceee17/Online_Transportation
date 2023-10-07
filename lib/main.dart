// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/flashcar_item_page.dart';
// import 'package:project_uts_online_transportation/pages/flashride_items_page.dart';
import 'package:project_uts_online_transportation/pages/flashtaxi.dart';
import 'package:project_uts_online_transportation/pages/google_maps.dart';
import 'pages/chatpage.dart';
import 'pages/faqpage.dart';
import 'pages/homechatpage.dart';
import 'pages/flashride_itemspage.dart';
import 'pages/flashtaxi.dart';
import 'pages/loginpage.dart';
import 'pages/loadingpage.dart';
import 'package:project_uts_online_transportation/pages/account_page.dart';
import 'package:project_uts_online_transportation/pages/flashcar_destination.dart';
import 'package:project_uts_online_transportation/pages/flashcar_pickup.dart';
import 'package:project_uts_online_transportation/pages/flashride_pickup.dart';
import 'package:project_uts_online_transportation/pages/history_page.dart';
import 'pages/startingpage.dart';
import 'pages/flashcar_page.dart';
import 'pages/order_page.dart';
import 'pages/flashpick_driverotw.dart';
import 'pages/flashride_confirmationpage.dart';
import 'pages/searchingdriver.dart';
import 'pages/flashridedestination.dart';
import 'pages/flashride_mainpage.dart';
import 'pages/moveperson_page.dart';
import 'pages/signuppage.dart';
import 'pages/forgotpasswordpage.dart';
import 'pages/landingpage.dart';
import 'pages/paymenmethod.dart';
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
        OrderPage.idScreen: (context) => OrderPage(),
        HistoryPage.idScreen: (context) => HistoryPage(),
        AccountPage.idScreen: (context) => AccountPage(),
        LoginPage.idScreen: (context) => LoginPage(),
      },
      home: LandingPage(),
    );
  }
}
