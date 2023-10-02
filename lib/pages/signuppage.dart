import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
                        obscureText: true,
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
                        obscureText: true,
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
                        obscureText: true,
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
                          if (fullnameTextEditingController.text.length < 4) {}
                          registerNewUser(context);
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
                          'Login',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
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
                              onPressed: () {},
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
    final firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(
            email: emailTextEditingController.text,
            password: passwordTextEditingController.text))
        .user;

    if (firebaseUser != null) {
    } else {}
  }
}
