import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 430,
            height: 75,
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 30), // Adjust the left padding as needed
                child: Text(
                  "ORDER",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 430,
            height: 5,
            color: Color(0xFF213A82),
            // child: Image.asset(
            //   'lib/assets/images/1.png',
            // )
          ),
        ],
      ),
    );
  }
}
