import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});
  static const String idScreen = "account";

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late PageController _pageController;

  int _selectedIndex = 3;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) {
        Navigator.pushNamed(context, OrderPage.idScreen);
        return;
      }

      _pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutQuad,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: [
            AccountPageContent(),
          ],
        ),
        bottomNavigationBar: CustomNavBar(
          selectedIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
        ),
      ),
    );
  }

  Column AccountPageContent() {
    return Column(
      children: [
        TemplateHead(title: 'ACCOUNT'),
        Padding(
          padding: EdgeInsets.only(
            bottom: 20,
            top: 10,
          ),
        ),
        Container(
          height: 192,
          width: 420,
          // color: Colors.green,
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              SvgPicture.asset(
                'lib/assets/images/profile_picture.svg',
                height: 150,
                width: 150,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 40,
                      right: 70,
                      left: 0,
                    ),
                    width: 250,
                    height: 70,
                    child: Text(
                      'Jessen Chayadi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 5,
                    color: Color(0xFF111D41),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    width: 230,
                    height: 100,
                    child: Text(
                      'Jessen.535220023@stu.untar.ac.id\n0812-8169-2004',
                      textAlign: TextAlign.justify,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 76,
          width: 400,
          color: Colors.black,
          child: TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.payment),
            label: Text('Payment Method'),
            style: ButtonStyle(),
          ),
        ),
      ],
    );
  }
}
