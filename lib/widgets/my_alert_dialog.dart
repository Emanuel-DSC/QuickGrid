import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return AlertDialog(
      title: Text('aaa',
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold)),
      content: Text('aaa', style: GoogleFonts.lato(color: Colors.white)),
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
          child: Text('Deletar',
              style: GoogleFonts.lato(color: Colors.white)),
        ),
      ],
      elevation: 10,
    );
  }
}