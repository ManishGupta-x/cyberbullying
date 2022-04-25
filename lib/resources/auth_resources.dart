import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //sign up user

  Future<String> signUpUser(
      {required String username, required String password, required String email}) async {
    String res = "Some error occured ";
    try {
      if (username.isNotEmpty || password.isNotEmpty || email.isNotEmpty) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        //add user to database
        // ignore: avoid_print
        print(cred.user!.uid);
        await _firestore.collection('users').doc(cred.user!.uid).set({
          'username': username,
          'email' : email,
          'uid': cred.user!.uid,
          'password': password
        });
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
