// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_uts_online_transportation/firebase/firebase_auth_services.dart';
import 'package:project_uts_online_transportation/pages/landingpage.dart';
import 'package:project_uts_online_transportation/pages/loginpage.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _fullnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _fullnameController.dispose();
    _emailController.dispose();
    _phonenumberController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                        controller: _fullnameController,
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
                        controller: _emailController,
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
                        controller: _phonenumberController,
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
                        controller: _usernameController,
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
                        controller: _passwordController,
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
                        onPressed: _signUp,
                        // () {
                        // if (fullnameTextEditingController.text.length < 3) {
                        //   displayToastMessage(
                        //       "Name must be at least 3 characters", context);
                        // } else if (!emailTextEditingController.text
                        //     .contains("@")) {
                        //   displayToastMessage(
                        //       "Email address is not Valid", context);
                        // } else if (phonenumberTextEditingController
                        //     .text.isEmpty) {
                        //   displayToastMessage(
                        //       "Phone number is mandatory", context);
                        // } else if (usernameTextEditingController
                        //     .text.isEmpty) {
                        //   displayToastMessage("Username is invalid", context);
                        // } else if (passwordTextEditingController.text.length <
                        //     6) {
                        //   displayToastMessage(
                        //       "Password must be at least 6 characters",
                        //       context);
                        // }
                        //else {
                        //   registerNewUser(context);
                        // }
                        // },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF111d41),
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 110,
                              vertical: 5),
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
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      const begin =
                                          Offset(0.0, -1.0);
                                      const end =
                                          Offset.zero;
                                      const curve =
                                          Curves.easeInOut;

                                      var tween = Tween(begin: begin, end: end)
                                          .chain(CurveTween(curve: curve));

                                      var offsetAnimation =
                                          animation.drive(tween);

                                      return FadeTransition(
                                        opacity: animation,
                                        child: SlideTransition(
                                          position: offsetAnimation,
                                          child: LoginPage(),
                                        ),
                                      );
                                    },
                                    transitionDuration: Duration(
                                        milliseconds:
                                            850),
                                  ),
                                );
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

  void _signUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    String fullname = _fullnameController.text;
    String email = _emailController.text;
    String phonenumber = _phonenumberController.text;
    String username = _usernameController.text;
    String password = _passwordController.text;

    try {
      if (_fullnameController.text.length < 3) {
        displayToastMessage("Name must be at least 3 characters", context);
      } else if (!_emailController.text.contains("@")) {
        displayToastMessage("Email address is not Valid", context);
      } else if (_phonenumberController.text.isEmpty) {
        displayToastMessage("Phone number is mandatory", context);
      } else if (_usernameController.text.isEmpty) {
        displayToastMessage("Username is invalid", context);
      } else if (_passwordController.text.length < 6) {
        displayToastMessage("Password must be at least 6 characters", context);
      } else {
        User? user = await _auth.signUpWithEmailAndPassword(
          email,
          password,
          fullname,
          username,
          phonenumber,
        );
        if (user != null) {
          print("You're already become a Flasher!");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LandingPage(),
            ),
          );
        } else {
          print("Error! : SignUp Failed");
        }
      }
    } catch (e) {
      print("Error: $e");
    }
  }

//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   void registerNewUser(BuildContext context) async {
//     final User? firebaseUser = (await _firebaseAuth
//             .createUserWithEmailAndPassword(
//                 email: emailTextEditingController.text,
//                 password: passwordTextEditingController.text)
//             .catchError((errMsg) {
//       displayToastMessage("Error: " + errMsg.toString(), context);
//     }))
//         .user;

//     if (firebaseUser != null) {
//       Map userDataMap = {
//         "Full Name": fullnameTextEditingController.text.trim(),
//         "E-mail": emailTextEditingController.text.trim(),
//         "Phone Number": phonenumberTextEditingController.text.trim(),
//       };

//       usersRef.child(firebaseUser.uid).set(userDataMap);
//       displayToastMessage("Your account has been created!", context);

//       Navigator.pushNamedAndRemoveUntil(
//           context, LandingPage.idScreen, (route) => false);
//     } else {
//       displayToastMessage("New user account has not been created", context);
//     }
//   }
// }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}
