import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = _auth.signInWithCredential(email)
      return credential.user
    } catch(e){
      print("error")
    }
  }
}