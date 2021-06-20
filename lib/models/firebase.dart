import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> userSetup(String displayName) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser.uid.toString();
  users.add({'displayName': displayName, 'uid': uid, });
  return;
}

// class UserManagement {
//   storeNewUser(user,context) {
//     FirebaseFirestore.instance.collection('/users').add({
//       'email': user.email,
//       'name': user.displayName,
//       'uid': user.uid
//     }). then((value) {
//       Navigator.of(context).pop();
//       Navigator.of(context).pushReplacementNamed('/home');
//     }).catchError((e) {
//       print(e);
//     });
//   }
// }