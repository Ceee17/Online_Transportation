import 'package:flutter/material.dart';
// import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isObscurePassword = true;
  bool isSecondImage = false;

  List<String> profileImages = [
    'lib/assets/images/fm1.png',
    'lib/assets/images/m1.png',
    'lib/assets/images/fm2.png',
    'lib/assets/images/m2.png',
  ];

  String selectedProfilImage = 'lib/assets/images/fm1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TemplateHead(title: 'EDIT PROFILE'),
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 45,
              ),
              child: GestureDetector(
                onTap: () {
                  _showProfileImageSelectionDialog();
                },
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              selectedProfilImage,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white,
                            ),
                            color: Color(0xFF3B60CE),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildTextField(
              'Username',
              'username',
              false,
            ),
            buildTextField(
              'E-mail',
              'email@gmail.com',
              false,
            ),
            buildTextField(
              'Phone Number',
              '0000-0000-0000',
              false,
            ),
            buildTextField(
              'Password',
              '********',
              true,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'CANCEL',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Map<String, dynamic> updatedData = {
                    //   'username' : newUsername,
                    //   'email' : newEmail,
                    //   'phonenumber' : newPhoneNumber,
                    //   'password' : newPassword,
                    // }
                    // updateProfileData(userId, updatedData);
                  },
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30,
        left: 25,
        right: 25,
      ),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  void _showProfileImageSelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Select Profile Image"),
          children: profileImages.map((imagePath) {
            return SimpleDialogOption(
              onPressed: () {
                setState(() {
                  selectedProfilImage = imagePath;
                });
                Navigator.of(context).pop();
              },
              child: Image.asset(
                imagePath,
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

// class FirebaseService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   Future<void> updateProfileData(String userId, Map<String, dynamic> newData) async {
//     try {
//       await _firestore.collection('users').doc(userId).update(newData);
//       print('Profile updated successfully.');
//     } catch (error) {
//       print('Error updating profile: $error');
//     }
//   }
// }
