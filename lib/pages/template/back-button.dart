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
      ),
    );
  }
}
