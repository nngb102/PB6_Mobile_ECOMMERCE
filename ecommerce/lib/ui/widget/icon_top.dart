import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class IconTop extends StatelessWidget {
  const IconTop({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.transparent,
          border: Border.all(width: 0.1, color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
}
