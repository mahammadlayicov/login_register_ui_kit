import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';
import 'package:login_register_ui/screens/loginScreen.dart';
import 'package:login_register_ui/widget/buttonWidget.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset('lib/assets/successmark.png'),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Password Changed!",
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
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: Text(
                "Your password has been changed successfully.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.grayColor,
                  fontSize: 16,
                  wordSpacing: -1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: button(textValue: "Back to Login")),
          ],
        ),
      ),
    );
  }
}
