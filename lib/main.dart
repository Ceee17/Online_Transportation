import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/flashcar_page.dart';
import 'pages/starting_page.dart';
import 'pages/flashcar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: StartingPage());
  }
}
