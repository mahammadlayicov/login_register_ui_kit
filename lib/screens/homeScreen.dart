import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';
import 'package:login_register_ui/screens/loginScreen.dart';
import 'package:login_register_ui/screens/registerScreen.dart';
import 'package:login_register_ui/widget/buttonWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/img.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                'Arka plana hoş geldiniz!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 448,
            left: (MediaQuery.of(context).size.width - 141.13) / 2,
            child: Container(
              width: 141.13,
              height: 99.03,
              child: Image.asset("lib/assets/Branding.png"),
            ),
          ),
          Positioned(
              top: 591,
              left: (MediaQuery.of(context).size.width - 330) / 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: button(
                  textValue: "Login",
                ),
              )),
          Positioned(
              top: 662,
              left: (MediaQuery.of(context).size.width - 330) / 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RegisterScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: AppColors.darkColor),
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  height: 56,
                  width: 330,
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: AppColors.darkColor),
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 750,
              left: (MediaQuery.of(context).size.width - 133) / 2,
              child: Container(
                child: Text(
                  "Continue as a guest",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: AppColors.primaryColor),
                ),
              )),
        ],
      ),
    );
  }
}
