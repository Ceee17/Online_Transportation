// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'template/templatehead.dart';
import 'template/template_nav_bar.dart';

class OrderPage extends StatefulWidget {
// pastiin classnya extend nya STATEFULWIDGET BUKAN STATELESS
  const OrderPage({super.key});
  static const String idScreen = "order";
  @override
  _OrderPageState createState() => _OrderPageState();
  //buat navbar nya jg
}

class _OrderPageState extends State<OrderPage> {
  int _selectedIndex = 2;
  // index gw 2 karna order page urutan ke-3
  // 0 - 1 - 2 - 3

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
          body: Stack(
            // disini menggunakan stack widget karena biar templatehead() tetep diatas, soalnya widget lainnya mw dibkin centered
            children: [
              Positioned(
                //positioned widget cuma bisa dipake di dlm stack widget, mangknya harus pake stack
                top: 0,
                left: 0,
                right: 0,
                child: TemplateHead(
                  title: "ORDER",
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // centered semua widgetnya
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    // backup()
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashride.svg',
                      svgHeight: 80,
                      title: 'FlashRide',
                      description:
                          'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                      color: 0xFF213A82,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashcar.svg',
                      svgHeight: 101,
                      title: 'FlashCar',
                      description:
                          'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                      color: 0xFF3B60CE,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomCardButton(
                      svgAsset: 'lib/assets/images/flashtaxi.svg',
                      svgHeight: 80,
                      title: 'FlashTaxi',
                      description: 'test',
                      color: 0xFF111D41,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 65,
                right: 20,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'View History',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          // <BOTTOM-NAVBAR>
          bottomNavigationBar: CustomNavBar(
              selectedIndex: _selectedIndex, onItemSelected: _onItemTapped),
          //</BOTTOM-NAVBAR>
        ));
  }
}

  // WaterDropNavBar navBar() {
  //   return WaterDropNavBar(
  //     // index sesuain sama pages nya
  //     selectedIndex: _selectedIndex,
  //     onItemSelected: _onItemTapped,
  //     barItems: [
  //       BarItem(
  //         filledIcon: Icons.home_filled,
  //         outlinedIcon: Icons.home_outlined,
  //       ),
  //       BarItem(
  //         filledIcon: Icons.forum,
  //         outlinedIcon: Icons.forum_outlined,
  //       ),
  //       BarItem(
  //           filledIcon: Icons.assignment,
  //           outlinedIcon: Icons.assignment_outlined),
  //       BarItem(
  //         filledIcon: Icons.person_2,
  //         outlinedIcon: Icons.person_2_outlined,
  //       ),
  //     ],
  //     bottomPadding: 15.0,
  //   );
  // }

  // Container backup() {
  //   return Container(
  //     width: 386,
  //     height: 154,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(25),
  //       color: Colors.white,
  //     ),
  //     child: ElevatedButton(
  //       onPressed: () {},
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: Color(0xFF3B60CE),
  //         side: BorderSide(
  //           width: 2,
  //           color: Colors.black,
  //         ),
  //         elevation: 15,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(25),
  //         ),
  //       ),
  //       child: Row(
  //         children: [
  //           SvgPicture.asset(
  //             'lib/assets/images/flashride.svg',
  //             height: 80,
  //             width: 80,
  //           ),
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'FlashRide',
  //                 style: TextStyle(
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //               Text(
  //                 'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
  //                 style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
  //               )
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
