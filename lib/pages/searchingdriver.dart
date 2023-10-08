import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/flashride_pickup.dart';
import 'template/templatehead.dart';
import 'template/flashbtntxt.dart';
import 'flashpick_driverotw.dart';
import 'landingpage.dart';
import 'dart:async';
import 'ride_confirmation.dart';

// class SearchingDrivPage extends StatelessWidget {
//   const SearchingDrivPage({Key? key}) : super(key: key);
//   static const String idScreen = "searchingdriver";
class SearchingDrivPage extends StatefulWidget {
  final String id;

  SearchingDrivPage({required this.id});
  _SearchingDrivPageState createState() => _SearchingDrivPageState();
}

class _SearchingDrivPageState extends State<SearchingDrivPage> {
  late Timer _timer; // Declare a Timer variable

  @override
  void initState() {
    super.initState();

    // Add a 10-second delay before auto-navigation
    _timer = Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FlashpickPage(id: widget.id),
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TemplateHead(title: "Searching Driver"),
          Image.asset(
            'lib/assets/images/waiting.png',
            width: 350,
            height: 400,
            alignment: Alignment.center,
          ),
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
                  color: Color(0xFF8DA2E2),
                  child: Column(
                    children: [
                      SizedBox(height: 30), // Adjust the height here
                      Container(
                        padding: EdgeInsets.all(2.0),
                        child: Align(
                          alignment: Alignment.center, // Center align the text
                          child: Text(
                            'Searching for Driver...',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: flashbtntxt,
                        onPressed: () {
                          _timer.cancel();
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return LandingPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      )
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
