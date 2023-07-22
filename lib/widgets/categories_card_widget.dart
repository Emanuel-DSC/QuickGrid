// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lista_mercado/constants/padding.dart';

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
        child: Column(
          children: [
            Card(
              color: Colors.grey[850],
              elevation: 0,
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(image))),
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
