import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/google_maps.dart';
import 'package:project_uts_online_transportation/pages/history_page.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DestinationCarPage extends StatefulWidget {
  const DestinationCarPage({Key? key});
  static const String idScreen = 'destinationcar';

  @override
  State<DestinationCarPage> createState() => _DestinationCarPageState();
}

class _DestinationCarPageState extends State<DestinationCarPage> {
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
                // leading: Icon(Icons.abc),
              ),
              Positioned(
                top: 80,
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
                top: 80,
                left: 50,
                child: Container(
                  width: 300,
                  child: SvgPicture.asset(
                    'lib/assets/images/flashcar.svg',
                  ),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HistoryPage()), // Navigate to CarPickupPage
                    );
                    // Add action for Tarumanagara University 1
                  },
                  child: Container(
                    width: 370,
                    height: 79,
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarumanagara university1',
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HistoryPage()), // Navigate to CarPickupPage
                    );
                    // Add action for Tarumanagara University 2
                  },
                  child: Container(
                    width: 360,
                    height: 79,
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 14),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HistoryPage()), // Navigate to CarPickupPage
                    );
                    // Add action for Tarumanagara University 3
                  },
                  child: Container(
                    width: 360,
                    height: 79,
                    margin: EdgeInsets.only(bottom: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarumanagara university3',
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
