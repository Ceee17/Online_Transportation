import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';

class PaymenPage extends StatelessWidget {
  static const String idScreen = "Payment";

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
            TemplateHead(title: "Payment Method"),
            Spacer(),
            Container(
              width: double.infinity,
              height: 672.4,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: Container(
                  color: Color(0xffFFFFFF),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CustomCardButton(
                        svgAsset: 'lib/assets/images/FlashCoin.svg',
                        svgHeight: 80,
                        svgWidth: 80,
                        title: 'Flash Coins',
                        description:
                            'make payments \neasily and practically \nwithout hassle',
                        color: Color(0xffFFFFFF),
                        textColor: Color(0xFF000000),
                        heightButton: 140,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomCardButton(
                        svgAsset: 'lib/assets/images/cash.svg',
                        svgHeight: 80,
                        svgWidth: 80,
                        title: 'Cash',
                        description:
                            'make payments \ndirectly to drivers \nusing cash',
                        color: Color(0xffFFFFFF),
                        textColor: Color(0xFF000000),
                        heightButton: 140,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomCardButton(
                        svgAsset: 'lib/assets/images/ovo.svg',
                        svgHeight: 30,
                        svgWidth: 30,
                        title: 'ovo',
                        description:
                            'make payments \ndirectly to drivers \nusing cash',
                        color: Color(0xffFFFFFF),
                        textColor: Color(0xFF000000),
                        heightButton: 140,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomCardButton(
                        svgAsset: 'lib/assets/images/gopay.svg',
                        svgHeight: 25,
                        svgWidth: 25,
                        title: 'Gopay',
                        description:
                            'make payments \ndirectly to drivers \nusing cash',
                        color: Color(0xffFFFFFF),
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
