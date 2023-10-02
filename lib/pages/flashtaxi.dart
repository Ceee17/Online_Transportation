import 'package:flutter/material.dart';

class FlashTaxiPage extends StatelessWidget {
  const FlashTaxiPage({Key? key});
  static const String idScreen = 'FlashTaxi';

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
        child: Text('*G Maps*'),
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
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Your Location Here',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 70,
                              left: 70,
                              child: Container(
                                width: 270,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Please Select Your Destination',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
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
                              top: 23, // Adjust the top position as needed
                              left: 150, // Adjust the left position as needed
                              child: Text(
                                'FlashTaxi (1-4 person)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 41, // Adjust the top position as needed
                              left: 150, // Adjust the left position as needed
                              child: Text(
                                'Estimated price Rp69,000 - Rp420,000\n nanti ini ngitung jarak',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
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
                  top: 286, // Adjust the top position as needed
                  left: 40, // Adjust the left position as needed
                  child: Container(
                    width: 343,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xff111D41),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your button's onPressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff111D41), // Set button color here
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
