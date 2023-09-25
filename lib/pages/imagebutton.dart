import 'package:flutter/material.dart';

class MyImageButton extends StatelessWidget {
  final ImageProvider image;
  final VoidCallback onPressed;

  MyImageButton({
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 300, // Set a specific width
        height: 300, // Set a specific height
        child: Image(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
