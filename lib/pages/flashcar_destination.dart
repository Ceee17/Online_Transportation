import 'package:flutter/material.dart';
// import 'flashride_confirmationpage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/flashcar_confirmationpage.dart';
import 'package:project_uts_online_transportation/pages/ride_confirmation.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'template/RightToLeftFadetransition.dart';

class DestinationcarPage extends StatefulWidget {
  final String pickup;
  final String destination;

  DestinationcarPage({
    required this.pickup,
    required this.destination,
  });
  @override
  _DestinationcarPageState createState() => _DestinationcarPageState();
}

class _DestinationcarPageState extends State<DestinationcarPage> {
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
                    Navigator.of(context).push(
                      RightToLeftFadeTransition(
                        page: CarConfirmation(
                          destination: 'Monumen Nasional',
                          pickup: widget.pickup,
                          id: '',
                        ),
                      ),
                    );
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
                            'Monumen Nasional',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'RT.5/RW.2, Gambir, Central Jakarta City',
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
                    Navigator.of(context).push(
                      RightToLeftFadeTransition(
                        page: CarConfirmation(
                          destination: 'Season City',
                          pickup: widget.pickup,
                          id: '',
                        ),
                      ),
                    );
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
                            'Season City',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Jl. Prof. Dr. Latumenten No.33, Jemb. Besi, Kec. Tambora',
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
                    Navigator.of(context).push(
                      RightToLeftFadeTransition(
                        page: CarConfirmation(
                          destination: 'Plaza Senayan',
                          pickup: widget.pickup,
                          id: '',
                        ),
                      ),
                    );
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
                            'Plaza Senayan',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Jl. Asia Afrika No.8, Gelora, Kecamatan Tanah Abang',
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
                    Navigator.of(context).push(
                      RightToLeftFadeTransition(
                        page: CarConfirmation(
                          destination: 'Tokyo Riverside',
                          pickup: widget.pickup,
                          id: '',
                        ),
                      ),
                    );
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
                            'Tokyo Riverside',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Jl. Marina Indah Raya No.1, Pantai Indah Kapuk',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
