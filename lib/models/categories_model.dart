import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/category_page.dart';

import 'category_item_model.dart';

class CategoryProvider extends ChangeNotifier {
  String selectedCategory = '';
  List<int> selectedItems = [];

  void setSelectedCategory(String category) {
    selectedCategory = category;
  }

  void navigateToCategoriesPage(BuildContext context, String name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryPage(
          name: name,
        ),
      ),
    );
  }

  void addItemToList(String value, List<CategoryItem> list) {
    final item = CategoryItem(name: value, category: selectedCategory);
    list.add(item);
    notifyListeners();
  }

  void checkBoxChanged(bool newBool, int index) {
    CategoryItem item = CategoryPage.itemList[index];
    item.completed = newBool;
  }
}
