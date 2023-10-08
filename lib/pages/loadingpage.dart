import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/startingpage.dart';
// import 'package:flutter/widgets.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: StartingPage(),
          );
        },
        transitionDuration: Duration(milliseconds: 500), // Adjust the duration as needed
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF3B60CE),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        // SizedBox(height: 50),
        Center(
          child: Image.asset(
            'lib/assets/images/2.png',
            width: 200,
            height: 200,
          ),
        ),
      ]),
    );
  }
}
