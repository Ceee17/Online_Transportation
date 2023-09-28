import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/loginpage.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 6, right: 6),
            child: Center(
              child: Text(
                '“Motor Vehicles Contribute 60%\nof Pollution”',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 17),
            child: Image.asset(
              'lib/assets/images/startingpage.png',
              height: 120,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 10),
            child: Center(
              child: Text(
                "Statement above from a published article.\n"
                "Are you ready to reduce motor vehicle pollution\n"
                "with us?🚗💨",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('"Get Started!" button already pressed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF111d41),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Text('Get Started!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                )),
          )
        ],
      ),
    );
  }
}
