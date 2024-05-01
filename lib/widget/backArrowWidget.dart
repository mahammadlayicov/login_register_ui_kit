import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';

class backArrowWidget extends StatelessWidget {
  const backArrowWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        margin: EdgeInsets.only(left: (width - 331) / 2, top: 50),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: AppColors.borderColor),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: 41,
        width: 41,
        child: Image.asset("lib/assets/back_arrow.png"),
      ),
    );
  }
}
