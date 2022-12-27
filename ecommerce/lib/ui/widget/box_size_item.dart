import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class BoxSizeItem extends StatelessWidget {
  const BoxSizeItem({
    required this.size,
    Key? key,
    required this.onTap,
    required this.check,
  }) : super(key: key);
  final String size;
  final Function() onTap;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 30,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          border: Border.all(
            color: check ? AppColors.red : AppColors.secondary,
            width: 1.5,
          ),
        ),
        alignment: Alignment.center,
        child: Text(size),
      ),
    );
  }
}
