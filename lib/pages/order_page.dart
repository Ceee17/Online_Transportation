import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'template/templatehead.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});
  static const String idScreen = "order";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 20,
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
                    color: 0xFF111D41)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container backup() {
    return Container(
      width: 386,
      height: 154,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3B60CE),
          side: BorderSide(
            width: 2,
            color: Colors.black,
          ),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'lib/assets/images/flashride.svg',
              height: 80,
              width: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FlashRide',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
