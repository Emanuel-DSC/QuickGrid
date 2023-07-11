// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  VoidCallback onTap;
  String text;
  CategoriesCard({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}