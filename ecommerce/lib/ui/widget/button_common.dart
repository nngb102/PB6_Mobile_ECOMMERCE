import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ButtonCommon extends StatelessWidget {
  const ButtonCommon({
    Key? key,
    required this.txt,
    required this.onTap,
    required this.colorButton,
    required this.colorText,
    this.height = 45,
    this.width = 130,
    this.fontText = 13,
    this.paddingHorizontal = 20,
    this.colorBorder = AppColors.red,
  }) : super(key: key);
  final String txt;
  final Color colorButton;
  final Color colorText;
  final Function() onTap;
  final double height;
  final double width;
  final double fontText;
  final double paddingHorizontal;
  final Color colorBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
        ),
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            width: 2,
            color: colorBorder,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          txt,
          style: TextStyle(
            fontSize: fontText,
            color: colorText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
