import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';

class socialMediaButtonWidget extends StatelessWidget {
  String iconName;
  socialMediaButtonWidget({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.borderColor,
          ),
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      height: 56,
      width: 105,
      child: Center(
        child: Image.asset(iconName),
      ),
    );
  }
}
