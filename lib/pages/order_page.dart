import 'package:flutter/material.dart';
import 'templatehead.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});
  static const String idScreen = "order";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TemplateHead(
            title: "ORDER",
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         // primary: Colors.redAccent, //background color of button
              //         side: BorderSide(
              //             width: 3,
              //             color: Colors.brown), //border width and color
              //         elevation: 3, //elevation of button
              //         shape: RoundedRectangleBorder(
              //             //to set border radius to button
              //             borderRaius: BorderRadius.circular(30)),
              //         padding:
              //             EdgeInsets.all(20) //content padding inside button
              //         ))
            ],
          ),
        ],
      ),
    );
  }
}
