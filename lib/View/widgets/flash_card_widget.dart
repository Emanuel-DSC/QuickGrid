import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

flashMessage(BuildContext context, itemName, category, Color color, IconData? icon,
    String title, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Container(
        height: 85,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoSlab(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoSlab(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
  ));
}
