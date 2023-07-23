// category_provider.dart
import 'package:flutter/material.dart';
import '../constants/lists.dart';
import '../database/database.dart';
import '../pages/category_page.dart';
import '../widgets/my_alert_dialog.dart';
import 'category_item_model.dart';

class CategoryProvider extends ChangeNotifier {
  String selectedCategory = '';
  List<int> selectedItems = [];
  DataBase db = DataBase();

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
    db.saveDataToStorage(); // Save data to GetStorage
  }

  void checkBoxChanged(bool newBool, int index) {
    CategoryItem item = CategoryPage.itemList[index];
    item.completed = newBool;
  }

  void deleteTask(int index, context) {
    showDialog(
        context: context,
        builder: (context) {
          return MyAlertDialog(
            onTap: () => Navigator.of(context).pop(),
            onTap2: () {
              final itemToRemove = CategoryPage.itemList[index];
              CategoryPage.itemList.removeAt(index);
              Navigator.of(context).pop();
              notifyListeners();
              listaFinal.removeWhere((item) => item.name == itemToRemove.name);
              db.saveDataToStorage();
              db.saveListaFinalToStorage();
            },
          );
        });
  }

  void reset(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return MyAlertDialog(
        onTap: () => Navigator.of(context).pop(),
        onTap2: () {
          for (final categoryItems in categoryMap.values) {
            for (final item in categoryItems) {
              item.completed = false;
            }
          }
          listaFinal.clear();
          Navigator.of(context).pop();
          notifyListeners();
          db.saveDataToStorage();
          db.saveListaFinalToStorage();
          Navigator.of(context).popAndPushNamed('/final_list_page');
        },
      );
    },
  );
}
}

