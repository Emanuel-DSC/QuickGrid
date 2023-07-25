import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController controller;

  const TextFieldWidget({
    Key? key,
    required this.keyboardType,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      keyboardType: keyboardType,
      controller: controller,
      cursorWidth: 2.5,
      cursorColor: const Color(0xFF39b54a),
      cursorRadius: const Radius.circular(5),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 22),
        fillColor: Theme.of(context).colorScheme.background,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:  BorderSide(
              color: Theme.of(context).colorScheme.tertiary, width: 2.0),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}