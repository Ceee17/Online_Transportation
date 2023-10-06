// import 'dart:js';';
import 'package:flutter/material.dart';
// import 'package:project_uts_online_transportation/firebase/firebase_auth_services.dart';
import '../firebase/firebase_auth_services.dart';
// import 'package:project_uts_online_transportation/main.dart';
import 'package:project_uts_online_transportation/pages/forgotpasswordpage.dart';
import 'package:project_uts_online_transportation/pages/landingpage.dart';
import 'package:project_uts_online_transportation/pages/signuppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(0.0),
            child: Center(
              child: Align(
                alignment: Alignment(-0.85, -0.38),
                child: Text(
                  'Login to your Flashccount',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
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
                  'Welcome Flasher ^^\nHave a Good Day',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
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
                color: Color(0xff213a82),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(37.0),
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
                      controller: _emailController,
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
                        labelText: 'E-mail',
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
                    SizedBox(height: 0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage(),
                              ));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    ElevatedButton(
                      onPressed: () => _signIn(context),
                      // () {
                      //   if (!emailTextEditingController.text.contains("@")) {
                      //     displayToastMessage(
                      //         "Email address is not Valid", context);
                      //   } else if (passwordTextEditingController.text.isEmpty) {
                      //     displayToastMessage("Password is mandatory", context);
                      //   } else {
                      //     loginAndAuthenticateUser(context);
                      //   }
                      // },
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
                        'Login',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '-Or Login with-',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          5), // Half of the height or width to make it a circle
                      child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.white,
                        child: TextButton(
                          onPressed: () {},
                          child: Image.asset(
                            'lib/assets/images/search.png',
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                    ),
                    // Image.asset(
                    //   'lib/assets/images/search.png'
                    // )
                    SizedBox(
                      height: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Do not have an account?',
                          style: TextStyle(
                            color: Color(0xffffffff),
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
                                    builder: (context) => SignupPage(),
                                  ));
                            },
                            child: Text(
                              'Sign up',
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
    );
  }

  void _signIn(BuildContext context) async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully signedIn");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
    } else {
      print("Error");
    }
  }
  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // void loginAndAuthenticateUser(BuildContext context) async {
  //   final User? firebaseUser = (await _firebaseAuth
  //           .signInWithEmailAndPassword(
  //               email: emailTextEditingController.text,
  //               password: passwordTextEditingController.text)
  //           .catchError((errMsg) {
  //     displayToastMessage("Error: " + errMsg.toString(), context);
  //   }))
  //       .user;

  //   if (firebaseUser != null) {
  //     // DatabaseEvent snapshot = await usersRef.child(firebaseUser.uid).once();
  //     usersRef
  //         .child(firebaseUser.uid)
  //         .once()
  //         .then((value) => (DataSnapshot snap) {
  //               if (snap.value != null) {
  //                 Navigator.pushNamedAndRemoveUntil(
  //                     context, LandingPage.idScreen, (route) => false);
  //                 displayToastMessage("You are logged in now", context);
  //               } else {
  //                 _firebaseAuth.signOut();
  //                 displayToastMessage(
  //                     "No record exists for this user. Please create a new account",
  //                     context);
  //               }
  //             });
  //   } else {
  //     displayToastMessage("Error occured", context);
  //   }
  // }
}
