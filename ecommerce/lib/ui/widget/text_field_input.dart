import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    required this.isPass,
    required this.hintText,
    required this.textInputType,
    required this.onChanged,
  }) : super(key: key);
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final Function(String value) onChanged;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ),
        keyboardType: textInputType,
        obscureText: isPass,
        onChanged: (value) => onChanged(value));
  }
}
