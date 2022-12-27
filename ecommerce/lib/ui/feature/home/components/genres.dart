import 'package:flutter/material.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: const EdgeInsets.only(right: 20),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Text(txt),
    );
  }
}