import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';

class PaymenPage extends StatelessWidget {
  static const String idScreen = "order";

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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 100,
                    height: 150,
                    child: Image.asset('lib/assets/images/FlashrideLogo.png'),
                  ),
                ),
                Text(
                  'Your Payment Method',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(), // Add Spacer to fill remaining space
            Container(
              width: double.infinity,
              height: 612.4, // Set your desired fixed height here
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: Container(
                  color: Color(0xff8DA2E2),
                  // child: ListView.builder(
                  //   itemCount: 3,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return ListTile(
                  //       title: Text('Item $index'),
                  //     );
                  //   },
                  // ),

                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CustomCardButton(
                        svgAsset: 'lib/assets/images/cash.svg',
                        svgHeight: 80,
                        svgWidth: 80,
                        title: 'Cash',
                        description:
                            'On The Way\nETA : 5 Mins\nPickup : Untar\nDestination : Mcdonald',
                        color: Color(0xFF8DA2E2),
                        textColor: Color(0xFF000000),
                        heightButton: 140,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
