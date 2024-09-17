import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void login(BuildContext context) async {
    try {
      //await _auth.signInWithEmailAndPassword(email: "eatwisesoft@gmail.com", password: "123456");
      //_auth.currentUser?.sendEmailVerification();
      //print(_auth.currentUser != null);
      //print(_auth.currentUser?.emailVerified);
      //_auth.signInWithPhoneNumber("+905074185353");
      await _auth.verifyPhoneNumber(
        phoneNumber: "+905074185353",
        codeSent: (String verificationId, int? forceResendingToken) {},
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) {},
        verificationFailed: (FirebaseAuthException error) {},
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      _showSnackbar(context, "Login successful");
    } on FirebaseAuthException catch (e) {
      _showSnackbar(context, e.message.toString());
    }
  }

  void register(BuildContext context) async {
    try {
      _auth.createUserWithEmailAndPassword(
          email: "eatwisesoft@gmail.com", password: "123456");
      print(_auth.currentUser != null);
      _showSnackbar(context, "Register successful");
    } on FirebaseAuthException catch (e) {
      _showSnackbar(context, e.message.toString());
    }
  }

  void forgotPassword() async {
    _auth.sendPasswordResetEmail(email: "eatwisesoft@gmail.com");
  }

  void _showSnackbar(BuildContext context, String message) {
    SnackBar snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void addUser(){
    _firestore.collection("address").doc().set({
      "username":"Cihan",
      "email":"cihanurtekin@gmail.com"
    });
  }
}
