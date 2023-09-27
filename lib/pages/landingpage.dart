import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: LandingPage(),
  ));
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;
  final List<String> menuItems = ['Flashride', 'Flashcar', 'Flashtaxi'];
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if (index == 3) {
      //   Navigator.pushNamed(context, AccountPage.idScreen);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Flasher!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Welcome.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Let’s start using FlashMover and be a part of Flashers\n"
                  "to travel while avoiding worsening air pollution\n"
                  "and preserving our planet together!🌍🍃",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          CarouselSlider(
            items: menuItems.map((menu) {
              return Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xff111d41),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Text(
                    menu,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 165,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            carouselController: _carouselController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuItems.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  _carouselController.animateToPage(entry.key);
                },
                child: Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == entry.key
                        ? Color(0xff111d41)
                        : Colors.transparent,
                    border: Border.all(
                      color: Color(0xff111d41),
                      width: 1,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Why FlashMover?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
