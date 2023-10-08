import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/flashride_pickup.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'template/templatehead.dart';
import 'template/flashbtntxt.dart';
import 'landingpage.dart';

class FlashpickPage extends StatelessWidget {
  static const String idScreen = "flashpick";
  final String id;
  const FlashpickPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TemplateHead(title: "Flash Pick"),
          Image.asset(
            'lib/assets/images/waitingdriver.png',
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
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.all(2.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Your Driver is On The Way',
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
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: OrderPage(
                                    id1: '1',
                                    id2: '2',
                                    id3: '3',
                                    id4: '4',
                                    id5: '5',
                                  ),
                                );
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontSize: 14,
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
