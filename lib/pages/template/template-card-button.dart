import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardButton extends StatelessWidget {
  final String svgAsset;
  final double svgHeight;
  final double svgWidth;
  final String title;
  final String description;
  final Color color;
  final Color textColor;
  final double heightButton;

  const CustomCardButton({
    Key? key,
    required this.svgAsset,
    required this.svgHeight,
    required this.svgWidth,
    required this.title,
    required this.description,
    required this.color,
    this.textColor = const Color(0xFFffffff),
    this.heightButton = 154,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: heightButton,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          // side: BorderSide(
          //   width: 2,
          //   color: Colors.black,
          // ),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgAsset,
              height: svgHeight,
              width: svgWidth,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
