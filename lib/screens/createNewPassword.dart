import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';
import 'package:login_register_ui/widget/backArrowWidget.dart';
import 'package:login_register_ui/widget/buttonWidget.dart';
import 'package:login_register_ui/widget/socialMediaButtonWidget.dart';
import 'package:login_register_ui/widget/textFieldWidget.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
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
                    "Create new password",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(0, 2),
                            blurRadius: 4,
                            color: Colors.grey.withOpacity(0.7),
                          ),
                        ],
                        fontSize: 28,
                        wordSpacing: -1,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your new password must be unique from those previously used.",
                    style: TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 16,
                        wordSpacing: -1,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          textFieldWidget(
            width: width,
            title: "New Password",
          ),
          SizedBox(
            height: 15,
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
              child: button(textValue: "Reset Password")),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
