// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/account_page.dart';
import 'package:project_uts_online_transportation/pages/history_page.dart';
import 'package:project_uts_online_transportation/pages/homechatpage.dart';
import 'package:project_uts_online_transportation/pages/landingpage.dart';
import 'package:project_uts_online_transportation/pages/template/LeftToRightFadetransition.dart';
import 'package:project_uts_online_transportation/pages/template/RightToLeftFadetransition.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'template/templatehead.dart';
import 'template/template_nav_bar.dart';

class OrderPage extends StatefulWidget {
  final String id1;
  final String id2;
  final String id3;
  final String id4;
  final String id5;

  const OrderPage({
    required this.id1,
    required this.id2,
    required this.id3,
    required this.id4,
    required this.id5,
    Key? key,
  });

  static const String idScreen = "order";
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late PageController _pageController;
  int _selectedIndex = 2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => LandingPage(),
          //   ),
          // );
          Navigator.of(context).push(
            LeftToRightFadeTransition(page: LandingPage()),
          );
          break;

        case 1:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomeChatPage(),
          //   ),
          // );
          Navigator.of(context).push(
            RightToLeftFadeTransition(page: HomeChatPage()),
          );
          break;

        case 3:
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => AccountPage(),
          //   ),
          // );
          Navigator.of(context).push(
            RightToLeftFadeTransition(page: AccountPage()),
          );
          break;
      }
      _pageController.animateToPage(
        _selectedIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOutQuad,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            _OrderPageContent(context),
          ],
        ),
        bottomNavigationBar: CustomNavBar(
          selectedIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
        ),
      ),
    );
  }

  Stack _OrderPageContent(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: TemplateHead(
            title: "ORDER",
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              if (widget.id1 == '1')
                CustomCardButton(
                  svgAsset: 'lib/assets/images/flashride.svg',
                  svgHeight: 80,
                  svgWidth: 80,
                  title: 'FlashRide',
                  description:
                      'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                  color: Color(0xFFffffff),
                  textColor: Color(0xFF000000),
                  svgBorderRadius: BorderRadius.circular(0),
                ),
              SizedBox(
                height: 20,
              ),
              if (widget.id3 == '3')
                CustomCardButton(
                  svgAsset: 'lib/assets/images/flashcar.svg',
                  svgHeight: 101,
                  svgWidth: 101,
                  title: 'FlashCar',
                  description:
                      'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                  color: Color(0xFFffffff),
                  textColor: Color(0xFF000000),
                  svgBorderRadius: BorderRadius.circular(0),
                ),
              SizedBox(
                height: 20,
              ),
              if (widget.id5 == '5')
                CustomCardButton(
                  svgAsset: 'lib/assets/images/flashtaxi.svg',
                  svgHeight: 80,
                  svgWidth: 80,
                  title: 'FlashTaxi',
                  description:
                      'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                  color: Color(0xFFffffff),
                  textColor: Color(0xFF000000),
                  svgBorderRadius: BorderRadius.circular(0),
                ),
              if (widget.id1 == '')
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/images/no_data.png',
                        height: 330, // Customize the height of the image
                        width: 330, // Customize the width of the image
                      ),
                      SizedBox(height: 10),
                      Text(
                        "You Don't Have Active Order Now.",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryPage()),
              );
            },
            child: Row(
              children: [
                Text(
                  'View History',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3B60CE),
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  size: 30,
                  color: Color(0xFF3B60CE),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
