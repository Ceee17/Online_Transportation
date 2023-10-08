import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';
import 'template/back-button.dart';

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
            BackBtn(),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
                      svgBorderRadius: BorderRadius.circular(0),
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
