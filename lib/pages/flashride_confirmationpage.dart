import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/searchingdriver.dart';
import 'template/templatehead.dart';
import 'flashridedestination.dart';
import 'flashride_pickup.dart';
import 'flashbtntxt.dart';
// import 'searchingdriver.dart';

class ConfirmPage extends StatefulWidget {
  final String destination;
  final String pickup;

  ConfirmPage({
    required this.destination,
    required this.pickup,
  });
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TemplateHead(title: "Confirmation"),

          //maps
          SizedBox(height: 150),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 250,
                  color: Color(0xFF8DA2E2),
                  child: Column(
                    children: [
                      // Adjust the height here
                      SizedBox(height: 20), // Adjust the height here
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PickupBikePage(
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
                              minimumSize:
                                  Size(350, 50), // Set the minimum width here
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
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
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DestinationbikePage(
                                          destination: widget.destination,
                                          pickup: widget.pickup,
                                        )), // Ganti TujuanPage() dengan halaman yang ingin Anda navigasikan
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
                        ],
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: flashbtntxt,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SearchingDrivPage()), // Navigate to CarPickupPage
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
