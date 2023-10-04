import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        left: 0,
        right: 320,
        bottom: 15,
      ),
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black,
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
    );
  }
}
