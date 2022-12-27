import 'package:flutter/material.dart';

class BoxColor extends StatelessWidget {
  const BoxColor({
    Key? key,
    required this.onTap,
    required this.isSelected,
    required this.color,
  }) : super(key: key);

  final Function() onTap;
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          top: 20 / 4,
          right: 20 / 2,
        ),
        padding: const EdgeInsets.all(2.5),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? color : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
