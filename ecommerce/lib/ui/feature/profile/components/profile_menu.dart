import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ProFileMenu extends StatelessWidget {
  const ProFileMenu({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);
  final String txt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // height: 80,
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      margin: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.secondary,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.red,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              txt,
            ),
          ),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
