// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lista_mercado/constants/padding.dart';


class CategoriesCard extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String image;
  final bool isVisible;

  const CategoriesCard({
    Key? key,
    required this.text,
    required this.image,
    required this.isVisible,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(
            child: Card(
              color: Theme.of(context).colorScheme.secondary,
              elevation: 0,
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 125,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: kpadding5),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSlab(fontWeight: FontWeight.normal, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
