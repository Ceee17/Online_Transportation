import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

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
                  onPressed: () {
                    print('"Send" button pressed');
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
                    'Send',
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
                    onPressed: () {},
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
  }
}
