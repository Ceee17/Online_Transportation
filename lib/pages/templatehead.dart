import 'package:flutter/material.dart';

class TemplateHead extends StatelessWidget {
  final String title;
  const TemplateHead({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              height: 5,
              color: Color(0xFF213A82),
            ),
            Positioned(
              left: 20,
              top: 0,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            Image.asset(
              'lib/assets/images/flashicon_rounded.png',
              width: 80,
              height: 80,
            ),
          ],
        ),
      ],
    );
  }
}
