import 'package:ecommerce/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({
    Key? key,
    required this.isChecked,
    required this.function,
  }) : super(key: key);
  final bool isChecked;
  final Function(bool? value)? function;
  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Checkbox(
          checkColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          value: widget.isChecked,
          onChanged:(value)=> widget.function!(value),),
    );
  }
}
