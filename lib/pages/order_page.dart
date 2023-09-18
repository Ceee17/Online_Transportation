import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              Container(
                width: 386,
                height: 154,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                      width: 2,
                      color: Colors.red,
                    ),
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'lib/assets/images/flashride.svg',
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        'test',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
