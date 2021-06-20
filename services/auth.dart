import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<String> get onAuthStateChanged => _firebaseAuth.authStateChanges().map(
      (User user) => user.uid,
  );

  //Get UID
  String getCurrentUID() {
    return _firebaseAuth.currentUser.uid;
  }

  //Get Current user
  Future getCurrentUser() async {
  return _firebaseAuth.currentUser;
  }

  //Email & password Sign up
Future<String> createUserWithEmailAndPassword(
    String email, String name, String password) async {
  final result = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
  );


  //Update the user name
  Future updateUserName(String name, User currentUser) async {
    await currentUser.updateProfile(displayName: name);
    await currentUser.reload();
  }
}

// Email & password SignIn
// Future<String> signInWithEmailAndPassword(
//     String email, String password) async{
//   return (await _firebaseAuth.signInWithEmailAndPassword(
//       email: email, password: password)).uid;
// }
}