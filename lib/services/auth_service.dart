import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:login_register_ui/screens/forgetPasswordScreen.dart';
import 'package:login_register_ui/screens/loginTrueScreen.dart';

class AuthService {
  final userCollection = FirebaseFirestore.instance.collection("users");
  final firebaseAuth = FirebaseAuth.instance;
  Future<void> singUp(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        _registerUser(name: name, email: email, password: password);
      }
    } on FirebaseAuthException catch (e) {
      e.message;
      Fluttertoast.showToast(msg: e.message!);
    }
  }

  Future<void> singIn(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    final navigator = Navigator.of(context);
    final UserCredential userCredential =await firebaseAuth
        .signInWithEmailAndPassword(email: email, password: password);

    try {
      if (userCredential.user != null) {
        navigator.push(MaterialPageRoute(
          builder: (context) => SecondScreen(),
        ));
        Fluttertoast.showToast(msg: "Giris basarili");
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!);
    }
  }

  Future<void> _registerUser(
      {required String name,
      required String email,
      required String password}) async {
    await userCollection
        .doc()
        .set({"email": email, "name": name, "password": password});
  }

  Future<User?> signInWithGoogle() async {
    // Oturum açma sürecini başlat
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // Süreç içerisinden bilgileri al
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // Kullanıcı nesnesi oluştur
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    // Kullanıcı girişini sağla
    final UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);
    log(userCredential.user!.email.toString());
    return userCredential.user;
  }
}
