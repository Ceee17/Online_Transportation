import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/account_page.dart';
import 'package:project_uts_online_transportation/pages/flashcar_page.dart';
import 'package:project_uts_online_transportation/pages/flashtaxi.dart';
import 'package:project_uts_online_transportation/pages/flashride_mainpage.dart';
import 'package:project_uts_online_transportation/pages/homechatpage.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  static const String idScreen = "landing";

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late PageController _pageController;
  int _selectedIndex = 0;
  final List<Map<String, String>> menuItems = [
    {
      'text': 'FlashRide',
      'imagePath': 'lib/assets/images/moto3.png',
    },
    {
      'text': 'FlashCar',
      'imagePath': 'lib/assets/images/car.png',
    },
    {
      'text': 'FlashTaxi',
      'imagePath': 'lib/assets/images/2taxi.png',
    },
  ];

  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if (index == 2) {
      //   Navigator.pushNamed(
      //     context,
      //     OrderPage.idScreen,
      //   );
      // }
      switch (index) {
        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeChatPage(),
            ),
          );
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderPage(),
            ),
          );

        case 3:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AccountPage(),
            ),
          );
      }

      _pageController.animateToPage(
        _selectedIndex,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeOutQuad,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          SingleChildScrollView(
            child: Column(
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
                    return GestureDetector(
                      onTap: () {
                        // Handle the click event for the carousel item here
                        if (_currentIndex == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlashRidePage(
                                pickup: '',
                                destination: '',
                              ),
                            ),
                          );
                        } else if (_currentIndex == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlashCarPage(
                                pickup: '',
                                destination: '',
                              ),
                            ),
                          );
                        } else if (_currentIndex == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlashTaxiPage(
                                destination: ' ',
                                pickup: ' ',
                              ),
                            ),
                          );
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.all(8),
                        width: 450,
                        decoration: BoxDecoration(
                          color: Color(0xff111d41),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Stack(
                          children: [
                            // Gambar di pojok kiri atas
                            Positioned(
                              right: 15,
                              bottom: 15,
                              child: Image.asset(
                                menu['imagePath'] ?? '',
                                width: 150,
                                height: 100,
                              ),
                            ),
                            // Teks di pojok kanan bawah (dengan transform untuk efek diagonal)
                            Positioned(
                              left: 20,
                              top: 15,
                              child: Transform.rotate(
                                angle: 0, // Ubah sudut sesuai keinginan Anda
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    // color: Color(0xFF333333),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                    ),
                                  ),
                                  child: Text(
                                    menu['text'] ?? 'undefined text',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 165,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.72,
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
                        // if (_currentIndex == 0) {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) =>
                        //           FlashRidePage(pickup: '', destination: ''),
                        //     ),
                        //   );
                        // }
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
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Text(
                          "FlashMover's Electric Services : FlashMover exclusive offers electric motorcycle, car, and taxi services.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Text(
                          "Zero Emissions : Electric vehicles (EVs) have zero tailpipe emissions, contributing to cleaner air and reduced pollution.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Text(
                          "Environmental Impact : Opting for FlashMover's electric rides helps combat air pollution and supports a healthier environment.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Text(
                          "Climate Action : Electric mobility promotes energy efficiency and reduces greenhouse gas emissions, aiding in the fight against climate change.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Text(
                          "Join the Movement : By choosing FlashMover's electric vehicles, you actively participate in the movement for cleaner air and a greener future.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  // titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    children: [
                      SizedBox(
                        width: 0,
                      ),
                      Expanded(
                        child: Text(
                          "Positive Choice : Select FlashMover for convenient, eco-conscious travel, contributing to the solution for motor vehicle pollution and a cleaner planet.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
