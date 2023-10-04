import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_uts_online_transportation/main.dart';
import 'package:project_uts_online_transportation/pages/landingpage.dart';
import 'package:project_uts_online_transportation/pages/loginpage.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  TextEditingController fullnameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phonenumberTextEditingController =
      TextEditingController();
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff213a82),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0.0),
              child: Center(
                child: Align(
                  alignment: Alignment(-0.85, -0.38),
                  child: Text(
                    'Create your Flashccount',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 0,
              right: 0,
              child: Container(
                child: Center(
                  child: Text(
                    '   Are you ready to\nbecome a Flasher?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 560,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(37.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Padding(
                  // padding: EdgeInsets.all(25.0),
                  padding:
                      EdgeInsets.only(top: 10, bottom: 30, left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      TextField(
                        controller: fullnameTextEditingController,
                        decoration: InputDecoration(
                          // enabledBorder: OutlineInputBorder(
                          // borderSide: BorderSide(width: 13, color: Colors.black),
                          //   borderRadius: BorderRadius.circular(45.0),
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          labelText: 'Full Name',
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: emailTextEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          labelText: 'E-mail',
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: phonenumberTextEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          labelText: 'Phone Number',
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: usernameTextEditingController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          labelText: 'Username',
                        ),
                      ),
                      SizedBox(height: 15),
                      TextField(
                        controller: passwordTextEditingController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          filled: true,
                          fillColor: Color(0xffffffff),
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (fullnameTextEditingController.text.length < 3) {
                            displayToastMessage(
                                "Name must be at least 3 characters", context);
                          } else if (!emailTextEditingController.text
                              .contains("@")) {
                            displayToastMessage(
                                "Email address is not Valid", context);
                          } else if (phonenumberTextEditingController
                              .text.isEmpty) {
                            displayToastMessage(
                                "Phone number is mandatory", context);
                          } else if (usernameTextEditingController
                              .text.isEmpty) {
                            displayToastMessage("Username is invalid", context);
                          } else if (passwordTextEditingController.text.length <
                              6) {
                            displayToastMessage(
                                "Password must be at least 6 characters",
                                context);
                          } else {
                            registerNewUser(context);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF111d41), // Ubah backgroundColor
                          onPrimary: Colors.white, // Ubah textColor
                          padding: EdgeInsets.symmetric(
                              horizontal: 110,
                              vertical: 5), // Sesuaikan ukuran tombol
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Container(
                            height: 35,
                            width: 100,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              child: Text(
                                'Log in',
                                style: TextStyle(
                                  color: Color(0xff8da2e2),
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void registerNewUser(BuildContext context) async {
    final User? firebaseUser = (await _firebaseAuth
            .createUserWithEmailAndPassword(
                email: emailTextEditingController.text,
                password: passwordTextEditingController.text)
            .catchError((errMsg) {
      displayToastMessage("Error: " + errMsg.toString(), context);
    }))
        .user;

    if (firebaseUser != null) {
      Map userDataMap = {
        "Full Name": fullnameTextEditingController.text.trim(),
        "E-mail": emailTextEditingController.text.trim(),
        "Phone Number": phonenumberTextEditingController.text.trim(),
      };

      usersRef.child(firebaseUser.uid).set(userDataMap);
      displayToastMessage("Your account has been created!", context);

      Navigator.pushNamedAndRemoveUntil(
          context, LandingPage.idScreen, (route) => false);
    } else {
      displayToastMessage("New user account has not been created", context);
    }
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}
