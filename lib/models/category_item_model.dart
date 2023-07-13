import 'package:flutter/foundation.dart';

class CategoryItem extends ChangeNotifier {
  String name;
  bool completed;
  final String category;

  CategoryItem(
      {required this.name, this.completed = false, required this.category});

  void toggleCompleted() {
    completed = !completed;
    notifyListeners();
  }
}
