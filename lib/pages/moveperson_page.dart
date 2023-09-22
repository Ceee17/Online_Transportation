import 'package:flutter/material.dart';

class MovePersonPage extends StatelessWidget {
  const MovePersonPage({Key? key}) : super(key: key);
  static const String idScreen = "flashride";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
          child: Stack(
            children: <Widget>[
              AppBar(
                backgroundColor: Color(0xff8DA2E2),
                elevation: 0.0,
                centerTitle: true,
              ),
              Positioned(
                top: 50,
                child: Container(
                  width: 130,
                  child: Image.asset('lib/assets/images/FlashrideLogo.png'),
                ),
              ),
              Positioned(
                top: 35,
                left: 175,
                child: Container(
                  width: 230,
                  child: Image.asset('lib/assets/images/moto1.png'),
                ),
              ),
              Positioned(
                top: 190,
                left: 130,
                child: Container(
                  child: Text(
                    'Your Destination',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(0.0),
        child: Center(
          child: Align(
            alignment: Alignment(0.0, -0.9),
            child: Text(
              'Choose Flashride Service',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
