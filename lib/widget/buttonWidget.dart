import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';

class button extends StatelessWidget {
  String textValue;
  button({
    required this.textValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.darkColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      height: 56,
      width: 330,
      child: Center(
        child: Text(
          textValue,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
