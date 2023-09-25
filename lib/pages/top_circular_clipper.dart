import 'package:flutter/material.dart';

class TopCircularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 60); // Start at the top-left corner

    path.quadraticBezierTo(
        size.width / 2, 0, size.width, 60);

    path.lineTo(size.width, size.height); // End at the bottom-right corner
    path.lineTo(0, size.height); // Close the path on the left side
    path.close(); // Close the path to complete the shape

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
