import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;

  const TextFieldWidget({
    Key? key,
    required this.keyboardType,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return TextField(
      textAlign: TextAlign.center,
      keyboardType: keyboardType,
      controller: controller,
      cursorWidth: 2.5,
      cursorRadius: const Radius.circular(5),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 22),
        fillColor: Theme.of(context).colorScheme.primary,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary, width: 2.0),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary, width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}