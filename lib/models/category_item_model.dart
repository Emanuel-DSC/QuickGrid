import 'package:flutter/material.dart';

class CategoryItem extends ChangeNotifier {
  final String name;
  final String category;
  bool completed;

  CategoryItem({
    required this.name,
    required this.category,
    this.completed = false,
  });

  void toggleCompleted() {
    completed = !completed;
    notifyListeners();
  }
}
