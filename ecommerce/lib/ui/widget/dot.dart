import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color:  Colors.amber,
      ),
    );
  }
}
