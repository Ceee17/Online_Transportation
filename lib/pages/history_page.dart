import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});
  static const String idScreen = "history";

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Column(
          children: [
            TemplateHead(
              title: "HISTORY",
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 0,
                right: 320,
                bottom: 20,
              ),
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                  shape: BoxShape.circle,
                  color: Color(0xFF3B60CE),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigate to the order page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderPage()),
                    );
                  },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.only(left: 8))),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                // padding: const EdgeInsets.only(top: 0, left: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashride.svg',
                      svgHeight: 60,
                      svgWidth: 60,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                    SizedBox(height: 20),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashcar.svg',
                      svgHeight: 60,
                      svgWidth: 60,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                    SizedBox(height: 20),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashtaxi.svg',
                      svgHeight: 50,
                      svgWidth: 50,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                    SizedBox(height: 20),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashcar.svg',
                      svgHeight: 60,
                      svgWidth: 60,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                    SizedBox(height: 20),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashtaxi.svg',
                      svgHeight: 50,
                      svgWidth: 50,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                    SizedBox(height: 20),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashride.svg',
                      svgHeight: 60,
                      svgWidth: 60,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                    SizedBox(height: 20),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashtaxi.svg',
                      svgHeight: 50,
                      svgWidth: 50,
                      title: 'Completed',
                      description: 'Pickup : Untar\nDestination : McDonald',
                      color: Color(0xFFffffff),
                      textColor: Color(0xFF000000),
                      heightButton: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
