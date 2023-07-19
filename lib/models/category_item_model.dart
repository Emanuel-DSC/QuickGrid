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

  // Add these methods for JSON serialization and deserialization
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'completed': completed,
    };
  }

  factory CategoryItem.fromJson(Map<String, dynamic> json) {
    return CategoryItem(
      name: json['name'],
      category: json['category'],
      completed: json['completed'],
    );
  }
}
