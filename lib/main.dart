import 'package:flutter/material.dart';
import 'package:login_register_ui/screens/createNewPassword.dart';
import 'package:login_register_ui/screens/forgetPasswordScreen.dart';
import 'package:login_register_ui/screens/homeScreen.dart';
import 'package:login_register_ui/screens/loginScreen.dart';
import 'package:login_register_ui/screens/otpScreen.dart';
import 'package:login_register_ui/screens/passwordChangeScreen.dart';
import 'package:login_register_ui/screens/registerScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
