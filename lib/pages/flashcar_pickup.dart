import 'package:flutter/material.dart';

class CarPickupPage extends StatelessWidget {
  const CarPickupPage({Key? key});
  static const String idScreen = 'carpickup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Add your other widgets here
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 607, // Set the desired height of the first bottom bar
            decoration: BoxDecoration(
              color: Color(0xff8DA2E2), // Set the color you want
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0), // Adjust the radius as needed
                topRight: Radius.circular(25.0), // Adjust the radius as needed
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 488, // Set the desired height of the second bottom bar
              decoration: BoxDecoration(
                color: Color(0xff213A82), // Set the color you want
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0), // Adjust the radius as needed
                  topRight:
                      Radius.circular(25.0), // Adjust the radius as needed
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
