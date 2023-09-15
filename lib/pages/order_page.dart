import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 500,
            height: 60,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 255, 129, 129)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 30), // Adjust the left padding as needed
                child: Text(
                  "ORDER",
                  style: TextStyle(
                    // fontFamily: "Poppins-Bold",  //custom fonts masi gbs
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 5,
                  color: Color(0xFF213A82),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0, left: 0),
                child: Image.asset(
                  'lib/assets/images/flashicon_rounded.png',
                  width: 80, // Adjust the width of the image as needed
                  height: 80, // Adjust the height of the image as needed
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
