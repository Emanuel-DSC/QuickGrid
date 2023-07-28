// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/category_item_model.dart';

class ItemCardFinalList extends StatelessWidget {
  final String text;
  final int index;

  const ItemCardFinalList({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryItem>(builder: (context, item, child) {
      return Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
        child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.tertiary.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text(
              text,
              style: GoogleFonts.robotoSlab(
                decoration: item.completed
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                fontSize: 22,
              ),
            ),
          ),
      );
    });
  }
}
