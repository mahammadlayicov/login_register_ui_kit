import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_ui/constant/colors.dart';
import 'package:login_register_ui/screens/passwordChangeScreen.dart';
import 'package:login_register_ui/widget/backArrowWidget.dart';
import 'package:login_register_ui/widget/buttonWidget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backArrowWidget(width: width),
          SizedBox(
            height: 25,
          ),
          Container(
              margin: EdgeInsets.only(left: (width - 331) / 2),
              height: 110,
              width: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "OTP Verification",
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
                    height: 10,
                  ),
                  Text(
                    "Enter the verification code we just sent on your email address.",
                    style: TextStyle(
                        color: AppColors.grayColor,
                        fontSize: 16,
                        wordSpacing: -1,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(left: (width - 331) / 2),
            height: 60,
            width: 331,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 60,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "0",
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border:
                          Border.all(width: 2, color: AppColors.primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                Container(
                  width: 70,
                  height: 60,
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "0",
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border:
                          Border.all(width: 2, color: AppColors.primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                Container(
                  width: 70,
                  height: 60,
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "0",
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border:
                          Border.all(width: 2, color: AppColors.primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                Container(
                  width: 70,
                  height: 60,
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "0",
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border:
                          Border.all(width: 2, color: AppColors.primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PasswordChange()));
            },
            child: Container(
                margin: EdgeInsets.only(left: (width - 331) / 2),
                child: button(textValue: "Verify")),
          ),
          Spacer(),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Didn’t received code? ',
                    ),
                    TextSpan(
                      text: 'Resend',
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
        ],
      ),
    );
  }
}
