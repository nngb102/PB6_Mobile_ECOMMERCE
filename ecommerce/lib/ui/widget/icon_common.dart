import 'package:flutter/material.dart';

class IconCommon extends StatelessWidget {
  const IconCommon({
    Key? key,
    required this.txtIcon,
    required this.icons,
    required this.onTap,
  }) : super(key: key);

  final String txtIcon;
  final Widget icons;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icons,
          Text(
            txtIcon,
            style: const TextStyle(fontSize: 9),
          ),
        ],
      ),
    );
  }
}