import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlashCarPage extends StatelessWidget {
  const FlashCarPage({Key? key});
  static const String idScreen = "flashcar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(247.0), // Adjust the height as needed
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25.0),
            bottomRight: Radius.circular(25.0),
          ),
          child: Stack(
            children: <Widget>[
              AppBar(
                title: Text('Halo cibai'),
                backgroundColor: Color(0xff8DA2E2),
                elevation: 0.0,
                centerTitle: true,
              ),
              Positioned(
                left: -28, // Adjusted to 0
                top: 0,
                bottom: 0,
                child: Container(
                  width: 200, // Adjust the width as needed
                  child: Image.asset(
                    'lib/assets/images/flashcarlogo.png',
                  ),
                ),
              ),
              Positioned(
                left: 10, // Adjusted to 120
                top: 120,
                bottom: 0,
                child: Container(
                  width: 150, // Adjust the width as needed
                  child: SvgPicture.asset(
                    'lib/assets/images/2cars.svg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
