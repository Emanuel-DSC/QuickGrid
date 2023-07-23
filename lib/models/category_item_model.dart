import 'package:flutter/material.dart';

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


   void toggleCompleted(item) {
    completed = !completed;
    if (completed) {
      listaFinal.add(item);
    } 
    notifyListeners();

    // Save data to GetStorage whenever the checkbox state changes
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
