import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class Star extends StatelessWidget {
  const Star({
    required this.check,
    Key? key,
  }) : super(key: key);
  final bool check;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2,
      ),
      child: Icon(
        Icons.star,
        size: 18,
        color: check ? AppColors.yellowColor : AppColors.defaultIconStarColor,
      ),
    );
  }
}
