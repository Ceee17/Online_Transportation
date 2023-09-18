import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class FlashCarPage extends StatelessWidget {
  const FlashCarPage({super.key});
  static const String idScreen = "flashcar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF3B60CE),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // SizedBox(height: 50),
        Center(
          child: Image.asset(
            'lib/assets/images/1.png',
            width: 200,
            height: 110,
          ),
        ),
        // SizedBox(height: 100),
        // Row(
        //   children: [
        //     Text(
        //       'Fla',
        //       style: TextStyle(
        //         fontSize: 30,
        //       ),
        //     ),
        //     Icon(
        //       Icons.bolt,
        //       size: 100,
        //       color: Color(0xFFE5FF70),
        //     ),
        //     Text(
        //       'hMover',
        //       style: TextStyle(
        //         fontSize: 30,
        //       ),
        //     )
        //   ],
        // )
      ]),
    );
  }
}
