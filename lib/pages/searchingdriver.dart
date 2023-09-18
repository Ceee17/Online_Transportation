import 'package:flutter/material.dart';
import 'templatehead.dart';
import 'top_circular_clipper.dart';

class SearchingDrivPage extends StatelessWidget {
  const SearchingDrivPage({Key? key}) : super(key: key);
  static const String idScreen = "searchingdriver";

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
          ClipPath(
            clipper: TopCircularClipper(),
            child: Container(
              height: 197,
              color: Color(0xFF8DA2E2),
              child: Stack(
                children: [
                  Positioned(
                    top: 50, // Adjust the top value to position the text vertically
                    left: 100, // Adjust the left value to position the text horizontally
                    child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Searching for Driver...',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
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