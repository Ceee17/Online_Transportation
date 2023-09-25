import 'package:flutter/material.dart';
import 'flashbtnimg.dart';

class MoveitemPage extends StatelessWidget {
  const MoveitemPage({Key? key}) : super(key: key);
  static const String idScreen = "flashride";

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
                child: Container(
                  width: 130,
                  child: Image.asset('lib/assets/images/moveitembtn.png'),
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
                top: 100,
                left: 200,
                child: Container(
                  child: Text(
                    'Experience smoother\nitem transfers using\nFlashRide',
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
                child: Text(
                  'Flashride Delivery',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
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
                                    height:5,
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
                              top: 35,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  ElevatedButton(
                                    style: flashbtnimg,
                                    onPressed: () {},
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
                              top: 35,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 50),
                                  ElevatedButton(
                                    style: flashbtnimg,
                                    onPressed: () {},
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
