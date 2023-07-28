import 'package:flutter/material.dart';

import '../View/pages/category_page.dart';
import '../constants/lists.dart';
import '../database/database.dart';

class CategoryItem extends ChangeNotifier {
  final String name;
  final String category;
  bool completed;

  CategoryItem({
    required this.name,
    required this.category,
    this.completed = false,
  });

  DataBase db = DataBase();

  void toggleCompleted(item, context, index) {
    completed = !completed;
    if (completed) {
      listaFinal.add(item);
    } else {
      final itemToRemove = CategoryPage.itemList[index];
      listaFinal.removeWhere((item) => item.name == itemToRemove.name);
    }
    notifyListeners();
    db.saveListaFinalToStorage();
    db.saveDataToStorage();
  }

  Map<String, dynamic> toMap() {
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
