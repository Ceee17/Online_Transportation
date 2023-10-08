import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: 0,
          bottom: 8,
        ),
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 0.4,
                blurRadius: 3,
                color: Colors.black.withOpacity(0.8),
              ),
            ],
            border: Border.all(
              width: 1.5,
              color: Color(0xFF213A82),
            ),
            shape: BoxShape.circle,
            color: Color(0xFF3B60CE),
          ),
          child: TextButton(
            onPressed: () {
              // Navigate to the order page
              Navigator.pop(context);
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(left: 8))),
            child: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
