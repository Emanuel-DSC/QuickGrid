import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../themes/models/theme_models.dart';
// ignore: must_be_immutable
class MyAlertDialog extends StatelessWidget {
  VoidCallback onTap; 
  VoidCallback onTap2; 

  MyAlertDialog({
    Key? key,
    required this.onTap,
    required this.onTap2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeNotifier, child) {
    return AlertDialog(
      title: Text('Atenção!'.toUpperCase(),
          style: GoogleFonts.lato(
              color: themeNotifier.isDark
              ? Colors.white : Colors.black, fontWeight: FontWeight.bold)),
      content: Text('Deseja limpar sua lista ?', style: GoogleFonts.lato(color: themeNotifier.isDark
              ? Colors.white : Colors.black)),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey
          ),
          onPressed: onTap,
          child: Text('Cancelar',
              style: GoogleFonts.lato(color: Colors.white)),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red
          ),
          onPressed: onTap2,
          child: Text('Limpar',
              style: GoogleFonts.lato(color: Colors.white)),
        ),
      ],
      elevation: 10,
    );
  }); }
}