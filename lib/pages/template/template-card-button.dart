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
  final BorderRadius svgBorderRadius;
  final double heightButton;
  
  final VoidCallback? onPressed;

  const CustomCardButton({
    Key? key,
    required this.svgAsset,
    this.svgHeight = 80,
    this.svgWidth = 80,
    required this.title,
    required this.description,
    this.color = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
    this.heightButton = 154,
    required this.svgBorderRadius,
    this.onPressed,
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
        onPressed: onPressed,
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
            ClipRRect(
              borderRadius: svgBorderRadius, // Apply the border radius to the SVG
              child: SvgPicture.asset(
                svgAsset,
                height: svgHeight,
                width: svgWidth,
              ),
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
