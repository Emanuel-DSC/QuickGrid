// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
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
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                text,
              ),
            ],
          ),
        ),
      );
    });
  }
}
