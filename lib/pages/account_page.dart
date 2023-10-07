import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_uts_online_transportation/pages/loginpage.dart';
import 'package:project_uts_online_transportation/pages/signuppage.dart';
import 'package:project_uts_online_transportation/pages/faqpage.dart';
import 'package:project_uts_online_transportation/pages/homechatpage.dart';
import 'package:project_uts_online_transportation/pages/landingpage.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
// import 'package:project_uts_online_transportation/pages/paymenmethod.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'edit_profile_page.dart';
import 'template/template-icon-card-button.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});
  static const String idScreen = "account";

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late PageController _pageController;

  int _selectedIndex = 3;

  YYDialog CustomDialog() {
    return YYDialog().build(context)
      ..width = 360
      ..height = 360
      ..borderRadius = 100
      ..gravityAnimationEnable = true
      ..gravity = Gravity.center
      ..widget(Padding(
        padding: EdgeInsets.only(
          top: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Are you sure?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 52,
              width: 234,
              // color: Colors.red,

              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  backgroundColor: Colors.red,
                  elevation: 10,
                ),
                child: Text(
                  'YES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                // var yyDialog = YYDialog();
                // yyDialog?.dismiss();

                Navigator.pop(context);
              },
              child: Text(
                'NO',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ))
      ..show();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LandingPage(),
            ),
          );
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
    // YYDialog.init(context);
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
              Container(
                // color: Colors.black,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: SvgPicture.asset(
                  'lib/assets/images/profile_picture.svg',
                  height: 150,
                  width: 150,
                ),
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
        IconCardButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditProfile(),
              ),
            );
          },
          icon: Icon(
            Icons.edit_outlined,
            size: 30,
          ),
          text: Text(
            'Edit Profile',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 0,
        ),
        IconCardButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => PaymenPage(),
            //   ),
            // );
          },
          icon: Icon(
            Icons.payment_outlined,
            size: 30,
          ),
          text: Text(
            'Payment Method',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 0,
        ),
        IconCardButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderPage(),
              ),
            );
          },
          icon: Icon(
            Icons.assignment_outlined,
            size: 30,
          ),
          text: Text(
            'My Orders',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 0,
        ),
        IconCardButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FaqPage(),
              ),
            );
          },
          icon: Icon(
            Icons.help_outline,
            size: 30,
          ),
          text: Text(
            'Frequently Ask Question',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 120,
        ),
        ElevatedButton(
          onPressed: () {
            CustomDialog();
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 140,
            ),
            elevation: 10,
          ),
          child: Text(
            'Log Out',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
