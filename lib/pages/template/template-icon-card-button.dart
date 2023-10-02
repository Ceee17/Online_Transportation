import 'package:flutter/material.dart';

class IconCardButton extends StatelessWidget {
  final Icon icon;
  final Text text;
  final VoidCallback? onPressed;

  const IconCardButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 490,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 7,
          //     spreadRadius: 0,
          //     offset: Offset(
          //       2,
          //       3,
          //     ),
          //   ),
          // ],
          ),
      // color: Colors.black,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.all(10),
          ),
          // elevation: MaterialStateProperty.all(5),
          foregroundColor:
              MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 0, 0)),
          backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 255, 255, 255)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                // borderRadius: BorderRadius.all(
                // Radius.circular(15),
                // ),
                side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 4,
            right: 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                width: 12,
              ),
              text,
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
