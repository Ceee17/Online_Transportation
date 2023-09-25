import 'package:flutter/material.dart';

class CarPickupPage extends StatelessWidget {
  const CarPickupPage({Key? key});
  static const String idScreen = 'carpickup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 83,
            child: Container(
              width: 600,
              height: 160,
              child: Image.asset('lib/assets/images/flashcarlogo.png'),
            ),
          ),
          // Add your other widgets here
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 607,
            decoration: BoxDecoration(
              color: Color(0xff8DA2E2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 488,
              decoration: BoxDecoration(
                color: Color(0xff213A82),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34.0),
                  topRight: Radius.circular(34.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
