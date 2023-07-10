// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  String text;
  CategoriesCard({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}