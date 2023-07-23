// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lista_mercado/constants/padding.dart';

class CategoriesCard extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String image;
  final Color colors;

  const CategoriesCard(
      {super.key,
      required this.text,
      required this.image,
      required this.colors,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Card(
              color: colors,
              elevation: 0,
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          fit: BoxFit.fill, image: AssetImage(image))),
                ),
              ),
            ),
            SizedBox(height: kpadding10,),
             Text(text, 
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w700, 
            fontSize: 14),),
          ],
        ));
  }
}
