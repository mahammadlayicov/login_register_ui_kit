import 'package:flutter/material.dart';
import 'package:login_register_ui/constant/colors.dart';

class textFieldWidget extends StatelessWidget {
  String title;
  IconData? iconData;
  bool? obscureText;
  TextEditingController? textEditingController;
  textFieldWidget(
      {super.key,
      this.textEditingController,
      required this.width,
      required this.title,
      this.obscureText,
      this.iconData});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 331,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 20.0),
      margin: EdgeInsets.symmetric(
        horizontal: (width - 331) / 2,
      ),
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Container(
            width: 260,
            child: TextField(
              controller: textEditingController,
              textAlignVertical: TextAlignVertical.center,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: title,
              ),
            ),
          ),
          if (iconData != null)
            Container(height: 22, width: 22, child: Icon(iconData)),
        ],
      ),
    );
  }
}
