import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  'Welcome Flasher ^^',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: Container(
              child: Center(
                child: Text(
                  'Have a Good Day!',
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
              height: 465,
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
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
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
                        onPressed: () {},
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
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '-Or Login with-',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
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
                      height: 38,
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
                            onPressed: () {},
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
}
