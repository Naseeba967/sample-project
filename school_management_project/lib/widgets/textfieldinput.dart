import 'package:flutter/material.dart';
import 'package:school_management_project/widgets/constant.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool isPass;
  final TextInputType textInputType;
  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.isPass = false,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      cursorColor: const Color.fromARGB(24, 158, 158, 158),
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: backgroundColor),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: backgroundColor)),
        contentPadding: const EdgeInsets.all(8),
      ),
      obscureText: isPass,
      keyboardType: textInputType,
    );
  }
}
