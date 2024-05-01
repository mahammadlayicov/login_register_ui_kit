import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';
import 'package:login_register_ui/screens/loginScreen.dart';
import 'package:login_register_ui/widget/backArrowWidget.dart';
import 'package:login_register_ui/widget/buttonWidget.dart';
import 'package:login_register_ui/widget/socialMediaButtonWidget.dart';
import 'package:login_register_ui/widget/textFieldWidget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              height: 90,
              width: 280,
              child: Text(
                "Welcome back! Glad to see you, Again!",
                style: TextStyle(shadows: [
                  Shadow(
                    offset: Offset(0, 2),
                    blurRadius: 4,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ], fontSize: 30, wordSpacing: -1, fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 25,
          ),
          textFieldWidget(
            width: width,
            title: "Username",
          ),
          SizedBox(
            height: 20,
          ),
          textFieldWidget(
            width: width,
            title: "Email",
          ),
          SizedBox(
            height: 20,
          ),
          textFieldWidget(
            width: width,
            title: "Password",
          ),
          SizedBox(
            height: 20,
          ),
          textFieldWidget(
            width: width,
            title: "Confirm Password",
          ),
          SizedBox(
            height: 25,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: (width - 331) / 2),
              child: button(textValue: "Register")),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: (width - 331) / 2),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: AppColors.borderColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or Register with",
                    style: TextStyle(color: AppColors.darkGrayColor),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                    color: AppColors.borderColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: (width - 331) / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                socialMediaButtonWidget(
                  iconName: "lib/assets/facebook_ic.png",
                ),
                socialMediaButtonWidget(
                  iconName: "lib/assets/google_ic.png",
                ),
                socialMediaButtonWidget(
                  iconName: "lib/assets/apple_ic.png",
                )
              ],
            ),
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
                        text: 'Already have an account?  ',
                      ),
                      TextSpan(
                        text: 'Login Now',
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
