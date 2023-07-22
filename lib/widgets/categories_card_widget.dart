// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  VoidCallback onTap;
  String text;
  String image;
  CategoriesCard(
      {super.key,
      required this.text,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Card(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(text),
            ),
          ),
        ));
  }
}
