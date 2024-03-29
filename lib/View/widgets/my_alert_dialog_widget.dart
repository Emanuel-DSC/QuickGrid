import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lista_mercado/constants/text.dart';
import 'package:provider/provider.dart';

import '../../themes/models/theme_models.dart';

// ignore: must_be_immutable
class MyAlertDialog extends StatelessWidget {
  VoidCallback onTap;
  VoidCallback onTap2;
  String text; 
  String buttonText; 

  MyAlertDialog({
    Key? key,
    required this.onTap,
    required this.onTap2,
    required this.text,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeNotifier, child) {
      return AlertDialog(
        title: Text(kAtencaoText.toUpperCase(),
            style: GoogleFonts.lato(
                color: themeNotifier.isDark ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold)),
        content: Text(text,
            style: GoogleFonts.lato(
                color: themeNotifier.isDark ? Colors.white : Colors.black)),
        actions: [
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: onTap,
            child:
                Text(kCancelarText, style: GoogleFonts.lato(color: Colors.white)),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            onPressed: onTap2,
            child: Text(buttonText, style: GoogleFonts.lato(color: Colors.white)),
          ),
        ],
        elevation: 10,
      );
    });
  }
}
