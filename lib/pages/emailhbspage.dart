import 'package:flutter/material.dart';

class EmailHbsPage extends StatelessWidget {
  const EmailHbsPage({Key? key}) : super(key: key);

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
                  'E-mail has been send!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 5),
              Image.asset(
                'lib/assets/images/mess.png',
                width: 450,
                height: 250,
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Please check your inbox and click in the received link to\n"
                  "reset the password.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    print('"Login" button pressed');
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
              ),
              SizedBox(
                height: 36,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Did't receive the link?",
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
                      'Resend',
                      style: TextStyle(
                        color: Color(0xff8da2e2),
                        fontSize: 13,
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
