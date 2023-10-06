// import 'dart:ffi';

// import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:project_uts_online_transportation/firebase/firebase_auth_services.dart';
import 'package:project_uts_online_transportation/pages/loginpage.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Password reset link sent! Check your email!'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }
  // final FirebaseAuthService _auth = FirebaseAuthService();

  // TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 5),
              Image.asset(
                'lib/assets/images/forgpass.png',
                width: 450,
                height: 250,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Don't worry, we're here to help you reset your password.\n"
                  "Please enter the email address you used to register below,\n"
                  "and we'll send you instructions on how to reset your password.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal:
                        16.0), // Tambahkan padding horizontal pada TextField
                child: TextField(
                  obscureText:
                      false, // Setel ke false agar teks yang dimasukkan tidak disembunyikan
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    filled: true,
                    fillColor: Color(0xffffffff),
                    labelText: 'Enter your E-mail',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () => resetPassword(),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF111d41), // Ubah backgroundColor
                    onPrimary: Colors.white, // Ubah textColor
                    padding: EdgeInsets.symmetric(
                        horizontal: 60, vertical: 6), // Sesuaikan ukuran tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Remember your password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
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
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    //   Future resetPassword() async {
    //     showDialog(
    //       context: context,
    //       barrierDismissible: false,
    //       builder: (context) => Center(child: CircularProgressIndicator()),
    //     );

    //     try {
    //       await FirebaseAuth.instance
    //           .sendPasswordResetEmail(email: _emailController.text.trim());

    //       Utils.showSnackBar('Password Reset Email Sent');
    //       Navigator.
    //     } on FirebaseAuthException catch (e) {
    //       print(e);

    //       Utils.showSnackBar(e.message);
    //     }
    //   }
  }
}
