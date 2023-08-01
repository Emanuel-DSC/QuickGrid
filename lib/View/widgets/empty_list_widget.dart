// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lista_mercado/constants/text.dart';

import '../../constants/padding.dart';


class EmptyPage extends StatelessWidget {
  String text;
  EmptyPage({super.key, 
    required this.text, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            kOopsText,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSlab(
              fontSize: 28,
            ),
          )),
          Center(
              child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSlab(
              fontSize: 18,
            ),
          )),
          SizedBox(height: kpadding20),
          const SizedBox(
              height: 200,
              width: 200,
              child: Image(image: AssetImage('assets/images/empty_list.png'))),
        ],
      ),
    );
  }
}
