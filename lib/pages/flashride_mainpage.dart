import 'package:flutter/material.dart';
import 'flashbtnimg.dart';
import 'flashride_pickup.dart';
import 'flashride_itemspage.dart';
import 'template/FadeandSlidetransition.dart';

class FlashRidePage extends StatefulWidget {
  final String pickup;
  final String destination;

  FlashRidePage({
    required this.pickup,
    required this.destination,
  });

  @override
  _FlashRidePageState createState() => _FlashRidePageState();
}

class _FlashRidePageState extends State<FlashRidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(247.0),
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
                top: 50,
                right: 0,
                child: Container(
                  width: 130,
                  child: Image.asset('lib/assets/images/FlashrideLogo.png'),
                ),
              ),
              Positioned(
                top: 130,
                left: 15,
                child: Container(
                  width: 230,
                  child: Image.asset('lib/assets/images/moto3.png'),
                ),
              ),
              Positioned(
                top: 180,
                left: 220,
                child: Container(
                  child: Text(
                    'order flashride from\nanywhere and anytime for\ntravel or delivery of items',
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
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0.0),
            child: Center(
              child: Align(
                alignment: Alignment(0.0, -0.9),
                child: Column(
                  children: [
                    Text(
                      'Choose Flashride Service',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 0), // Add some spacing
                    Padding(
                      padding: EdgeInsets.only(
                          // bottom: 900.0,
                          ), // Adjust the spacing as needed
                      child: Image.asset(
                        'lib/assets/images/flashridebackground.png', // Replace with your image path
                        width: 500,
                        height: 350,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.4,
              minChildSize: 0.34,
              maxChildSize: 0.875,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  child: Container(
                    color: Color(0xff213A82),
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        switch (index) {
                          case 0:
                            return Positioned(
                              top: 0,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 15),
                                  Container(
                                    width: 150,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(4),
                                        top: Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          case 1:
                            return Positioned(
                              top: 50,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  ElevatedButton(
                                    style: flashbtnimg,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        FadeAndSlideTransition(
                                          page: PickupBikePage(
                                            destination: widget.destination,
                                            pickup: widget.pickup,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                        'lib/assets/images/movepeoplebtn.png'),
                                  ),
                                  Text(
                                    'Move people?',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          case 2:
                            return Positioned(
                              top: 40,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  ElevatedButton(
                                    style: flashbtnimg,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        FadeAndSlideTransition(
                                          page: MoveitemPage(
                                            destination: widget.destination,
                                            pickup: widget.pickup,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                        'lib/assets/images/moveitembtn.png'),
                                  ),
                                  Text(
                                    'Move Items?',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          default:
                            return null;
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
