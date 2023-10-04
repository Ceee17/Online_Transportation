import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DestinationbikePage extends StatelessWidget {
  const DestinationbikePage({Key? key});
  static const String idScreen = 'destinationbike';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(207.0),
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
                top: 23,
                left: 288,
                child: Container(
                  width: 190,
                  child: Image.asset('lib/assets/images/flashcarlogo.png'),
                ),
              ),
              Positioned(
                top: 70,
                left: 110,
                child: Container(
                  width: 210,
                  child: Image.asset('lib/assets/images/moto3.png'),
                ),
              ),
              Positioned(
                top: 195,
                left: 130,
                child: Container(
                  child: Text(
                    'Your Destination',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 40,
            top: 5,
            child: Container(
              width: 340,
              height: 50,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Here',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 108,
            child: Column(
              children: [
                ElevatedButton(
  onPressed: () {
    // Add your button click logic here
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.zero, // Remove default padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36),
    ),
    elevation: 4,
    primary: Colors.white,
  ),
  child: Container(
    width: 360,
    height: 79,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(36),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tarumanagara university2',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Letjen S. Parman St no.1, RT.6/RW.16, Tomang, Grogol',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  ),
),
                ElevatedButton(
  onPressed: () {
    // Add your button click logic here
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.zero, // Remove default padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36),
    ),
    elevation: 4,
    primary: Colors.white,
  ),
  child: Container(
    width: 360,
    height: 79,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(36),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tarumanagara university2',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Letjen S. Parman St no.1, RT.6/RW.16, Tomang, Grogol',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  ),
),
                ElevatedButton(
  onPressed: () {
    // Add your button click logic here
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.zero, // Remove default padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36),
    ),
    elevation: 4,
    primary: Colors.white,
  ),
  child: Container(
    width: 360,
    height: 79,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(36),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tarumanagara university2',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 6),
          Text(
            'Letjen S. Parman St no.1, RT.6/RW.16, Tomang, Grogol',
            style: TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  ),
),
                Container(
                  width: 312,
                  height: 59,
                  decoration: BoxDecoration(
                    color: Color(0xff3B60CE),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: -10,
                        left: 25,
                        child: Image.asset(
                          'lib/assets/images/location1.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Text(
                        'Select Via Maps',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
