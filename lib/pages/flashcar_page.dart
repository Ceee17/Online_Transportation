import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/template/DraggableScrollableSheet.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'template/RightToLeftFadetransition.dart';

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
                leading: BackButton(),
                backgroundColor: Color(0xff8DA2E2),
                elevation: 0.0,
                centerTitle: true,
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
                top: 60,
                left: 0,
                child: Container(
                  height: 170,
                  width: 170,
                  child: SvgPicture.asset(
                    'lib/assets/images/2cars.svg',
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 210,
                child: Container(
                  child: Text(
                    'Book a FlashCarn \nto get to places and \nsend items conveniently',
                    style: TextStyle(
                      fontSize: 16,
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
      extendBody: true,
      bottomNavigationBar: DragSheet(
        pickup: '',
        destination: '',
      ),
    );
  }
}
