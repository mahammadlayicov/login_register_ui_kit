import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';
import 'package:login_register_ui/screens/loginScreen.dart';
import 'package:login_register_ui/screens/otpScreen.dart';
import 'package:login_register_ui/widget/backArrowWidget.dart';
import 'package:login_register_ui/widget/buttonWidget.dart';
import 'package:login_register_ui/widget/socialMediaButtonWidget.dart';
import 'package:login_register_ui/widget/textFieldWidget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backArrowWidget(width: width),
          SizedBox(
            height: 25,
          ),
          Container(
              margin: EdgeInsets.only(left: (width - 331) / 2),
              height: 127,
              width: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            color: Colors.grey.withOpacity(0.7),
                          ),
                        ],
                        fontSize: 30,
                        wordSpacing: -1,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 16,
                        wordSpacing: -1,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          textFieldWidget(
            width: width,
            title: "Enter your email",
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: (width - 331) / 2),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OtpScreen()));
                  },
                  child: button(textValue: "Send Code"))),
          SizedBox(
            height: 25,
          ),
          Spacer(),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Remember Password?  ',
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
