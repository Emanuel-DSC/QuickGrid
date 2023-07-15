// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipe_to/swipe_to.dart';

import '../models/category_item_model.dart';

class ItemCard extends StatelessWidget {
  final String text;
  final int index;
  final VoidCallback deleteFunction;
  
  const ItemCard({
    Key? key,
    required this.text,
    required this.index,
    required this.deleteFunction,
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
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Consumer<CategoryItem>(
                  builder: (context, item, child) {
                    return Checkbox(
                      value: item.completed,
                      onChanged: (value) {
                        item.toggleCompleted(item);
                      },
                      activeColor: Colors.black,
                    );
                  },
                ),
                Text(
                  text,
                  style: TextStyle(
                    decoration: item.completed
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
