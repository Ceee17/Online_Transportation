import 'package:flutter/material.dart';
import 'template/templatehead.dart';
import 'flashbtntxt.dart';
// import 'top_circular_clipper.dart';

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
                        onPressed: () {},
                        child: Text(
                          'Cancel',
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
