import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'template/RightToLeftFadetransition.dart';
import 'flashtaxi_pickup.dart';
import 'flashtaxi_destination.dart';
import 'searchingdriver.dart';

bool showAdditionalText = true;

class FlashTaxiPage extends StatefulWidget {
  final String destination;
  final String pickup;

  FlashTaxiPage({
    required this.destination,
    required this.pickup,
  });

  @override
  _FlashTaxiPageState createState() => _FlashTaxiPageState();
}

class _FlashTaxiPageState extends State<FlashTaxiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(227.0),
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
              // Positioned(
              //   top: 40,
              //   left: 20,
              //   child: BackBtn(),
              // ),
              Positioned(
                top: 52,
                left: 285,
                child: Container(
                  width: 150,
                  child: Image.asset('lib/assets/images/flashtaxilogo.png'),
                ),
              ),
              Positioned(
                top: 107,
                left: 25,
                child: Container(
                  width: 140,
                  child: Image.asset(
                    'lib/assets/images/taxihead.png',
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 200,
                child: Container(
                  child: Text(
                    'Redefining Travel:\nFast, Easy, Reliable. \nYour go-to-ride solution.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Positioned(
          top: 50, // Adjust the top position as needed
          left: 50, // Adjust the left position as needed
          child: Image.asset(
            'lib/assets/images/pointsab.png',
            width: 300,
            height: 300,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF213A82),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          child: Container(
            height: 367.0,
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      width: 375,
                      height: 130,
                      color: Color(0xff8DA2E2),
                      child: Center(
                        child: Stack(
                          children: [
                            Positioned(
                              top: -13,
                              left: -2,
                              child: Container(
                                width: 100,
                                child: Image.asset(
                                  'lib/assets/images/pickuploctaxi.png',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50,
                              left: 7,
                              child: Container(
                                width: 65,
                                child: Image.asset(
                                  'lib/assets/images/destinationtaxi.png',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 70,
                              child: Container(
                                width: 270,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      showAdditionalText = false;
                                    });
                                    Navigator.of(context).push(
                                      RightToLeftFadeTransition(
                                        page: PickupTaxiPage(
                                          pickup: widget.pickup,
                                          destination: widget.destination,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xffFFFFFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    minimumSize: Size(350, 50),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: showAdditionalText,
                                        child: Text(
                                          "pickup location",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff828282),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.pickup,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 70,
                              left: 70,
                              child: Container(
                                width: 270,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      showAdditionalText = false;
                                    });
                                    Navigator.of(context).push(
                                      RightToLeftFadeTransition(
                                        page: DestinationTaxiPage(
                                          pickup: widget.pickup,
                                          destination: widget.destination,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xffFFFFFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    minimumSize: Size(350, 50),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: showAdditionalText,
                                        child: Text(
                                          "Your Destination",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff828282),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.destination,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff828282),
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
                    ),
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Container(
                      width: 375,
                      height: 85,
                      color: Color(0xff8DA2E2),
                      child: Center(
                        child: Stack(
                          children: [
                            Positioned(
                              top: -8,
                              left: 20,
                              child: Container(
                                width: 100,
                                child: Image.asset(
                                  'lib/assets/images/taxibody.png',
                                ),
                              ),
                            ),
                            Positioned(
                              top: 23,
                              left: 130,
                              child: Text(
                                'FlashTaxi (1-4 person)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 41,
                              left: 130,
                              child: Text(
                                'Estimated price Rp20,000 - Rp50,000',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 286,
                  left: 40,
                  child: Container(
                    width: 343,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xff111D41),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchingDrivPage(
                                    id: '5',
                                  )),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff111D41),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'ORDER NOW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
