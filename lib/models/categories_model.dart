import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/category_page.dart';
import '../lists.dart';

class CategoryServices extends ChangeNotifier {
  void navigateToCategoriesPage(context, name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryPage(
          name: name,
        ),
      ),
    );
  }

  void addItemToList(value) {
    teste.add(value);
    notifyListeners();
  }
}
