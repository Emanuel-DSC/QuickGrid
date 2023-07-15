import 'package:flutter/material.dart';

import '../lists.dart';

class CategoryItem extends ChangeNotifier {
  final String name;
  final String category;
  bool completed;

  CategoryItem({
    required this.name,
    required this.category,
    this.completed = false,
  });

  void toggleCompleted(item) {
    completed = !completed; 
    if (completed) {
      listaFinal.add(item);
    }
    notifyListeners();
  }
}
