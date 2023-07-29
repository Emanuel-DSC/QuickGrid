// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipe_to/swipe_to.dart';

import '../../models/category_item_model.dart';
import '../../themes/models/theme_models.dart';

class ItemCard extends StatelessWidget {
  final String text;
  final int index;
  final VoidCallback deleteFunction;
  final ThemeProvider themeNotifier;

  const ItemCard({
    Key? key,
    required this.text,
    required this.index,
    required this.deleteFunction,
    required this.themeNotifier,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryItem>(builder: (context, item, child) {
      return Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
        child: SwipeTo(
          onLeftSwipe: deleteFunction,
          iconOnLeftSwipe: Icons.delete,
          iconColor: Colors.red,
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: themeNotifier.isDark
                      ? Theme.of(context).colorScheme.primary.withOpacity(0.5)
                      : Theme.of(context).colorScheme.tertiary.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: GoogleFonts.robotoSlab(
                    decoration: item.completed
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    fontSize: 22,
                  ),
                ),
                Consumer<CategoryItem>(
                  builder: (context, item, child) {
                    return Checkbox(
                      value: item.completed,
                      onChanged: (value) {
                        item.toggleCompleted(item, context, index);
                      },
                      activeColor: Colors.transparent,
                      checkColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
