import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/template/DraggableScrollableSheet.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';

// class FlashCarPage extends StatelessWidget {
//   const FlashCarPage({Key? key});
//   static const String idScreen = 'flashcar';
class FlashCarPage extends StatefulWidget {
  final String pickup;
  final String destination;

  FlashCarPage({
    required this.pickup,
    required this.destination,
  });
  @override
  _FlashCarPageState createState() => _FlashCarPageState();
}

class _FlashCarPageState extends State<FlashCarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(224.0),
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
                top: 40,
                left: 20,
                child: BackBtn(),
              ),
              Positioned(
                top: 23,
                left: 288,
                child: Container(
                  width: 190,
                  child: Image.asset('lib/assets/images/flashcarlogo.png'),
                ),
              ),
              Positioned(
                top: 120,
                left: -25,
                child: Container(
                  width: 230,
                  child: SvgPicture.asset(
                    'lib/assets/images/2cars.svg',
                  ),
                ),
              ),
              Positioned(
                top: 120,
                left: 190,
                child: Container(
                  child: Text(
                    'Book a FlashCar\nto get to places\nand send items\nconveniently',
                    style: TextStyle(
                      fontSize: 14,
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
              'Choose Flashcar Service',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      extendBody: true, // This allows the DragSheet to extend below the app bar
      bottomNavigationBar:
          DragSheet(pickup: '', destination: '',), // Use bottomNavigationBar instead of bottomSheet
    );
  }
}