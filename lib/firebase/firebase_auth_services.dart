import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
    String email,
    String password,
    String fullName,
    String userName,
    String phoneNumber,
  ) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      String uid = credential.user!.uid;

      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'fullName': fullName,
        'userName': userName,
        'phoneNumber': phoneNumber,
        'email': email,
      });

      return credential.user;
    } catch (e) {
      print("Error: $e");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Error");
    }
    return null;
  }
}
// import 'package:firebase_auth/firebase_auth.dart';

// class FirebaseAuthService{
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<User?> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       Future<UserCredential> credential = _auth.signInWithCredential(email as AuthCredential);
//       return credential;
//     } catch(e){
//       print("error");
//     }
//     return null;
//   }

//   late Future<User?> signInWithEmailAndPassword;
// }