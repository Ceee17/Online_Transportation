import 'package:flutter/material.dart';
import 'flashridedestination.dart';
import 'flashride_confirmationpage.dart';

// class PickupBikePage extends StatefulWidget {
//   const PickupBikePage({Key? key});
//   static const String idScreen = 'pickupbike';

//  @override
//   State<PickupBikePage> createState() => _CarPickupPageState();
// }

// class _CarPickupPageState extends State<PickupBikePage> {
class PickupBikePage extends StatefulWidget {
  final String pickup;
  final String destination;

  PickupBikePage({
    required this.pickup,
    required this.destination,
  });
  @override
  _PickupBikePageState createState() => _PickupBikePageState();
}

class _PickupBikePageState extends State<PickupBikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 83,
            child: Container(
              width: 600,
              height: 160,
              child: Image.asset('lib/assets/images/flashcarlogo.png'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 607,
            decoration: BoxDecoration(
              color: Color(0xff8DA2E2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0),
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Your Location',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Pickup Location',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 488,
              decoration: BoxDecoration(
                color: Color(0xff213A82),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34.0),
                  topRight: Radius.circular(34.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DestinationbikePage(
                                  pickup:
                                'Tarumanagara university 1',
                            destination: widget.destination,
                                )), // Navigate to CarPickupPage
                      );
                      // Add your onPressed logic here
                    },
                    child: Container(
                      width: 370,
                      height: 87,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center text vertically
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tarumanagara university 1',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DestinationbikePage(
                                  pickup:
                                'Tarumanagara university 2',
                            destination: widget.destination,
                                )), // Navigate to CarPickupPage
                      );
                      // Add your onPressed logic here
                    },
                    child: Container(
                      width: 370,
                      height: 87,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center text vertically
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tarumanagara university 2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Parking lot, Jl. Universitas Tarumanagara Kampus II No.11',
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DestinationbikePage(
                                  pickup:
                                'Alfa X Untar',
                                destination: widget.destination,
                                )), // Navigate to CarPickupPage
                      );
                      // Add your onPressed logic here
                    },
                    child: Container(
                      width: 370,
                      height: 87,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center text vertically
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alfa X Untar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Jl. Taman S. Parman, RT.7/RW.8, Grogol',
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
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DestinationbikePage(
                                  pickup:
                                'Indomaret Taman S Parman. TCMJ',
                            destination: widget.destination,
                                )), // Navigate to CarPickupPage
                      );
                      // Add your onPressed logic here
                    },
                    child: Container(
                      width: 332,
                      height: 59,
                      decoration: BoxDecoration(
                        color: Color(0xff3B60CE),
                        borderRadius: BorderRadius.circular(34),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top:
                                -10, // Adjust the top value to move the image down
                            left:
                                25, // Adjust the left value to move the image right
                            child: Image.asset(
                              'lib/assets/images/location1.png',
                              width: 80,
                              height: 80,
                            ),
                          ),
                          Text(
                            'Use Your Current Location',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.w100,
                              decoration:
                                  TextDecoration.underline, // Add this line
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}