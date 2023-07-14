import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../models/category_item_model.dart';

class ItemCard extends StatelessWidget {
  final String text;
  final int index;

  const ItemCard({
    Key? key,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryItem>(builder: (context, item, child) {
      return Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: null,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,
                borderRadius: BorderRadius.circular(12),
              )
            ],
          ),
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
                        item.toggleCompleted();
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
