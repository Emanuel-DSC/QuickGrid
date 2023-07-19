// category_provider.dart
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../lists.dart';
import '../pages/category_page.dart';
import '../widgets/my_alert_dialog.dart';
import 'category_item_model.dart';

class CategoryProvider extends ChangeNotifier {
  String selectedCategory = '';
  List<int> selectedItems = [];
  final _storage = GetStorage(); // Initialize GetStorage instance

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
    saveDataToStorage(); // Save data to GetStorage
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
              CategoryPage.itemList.removeAt(index);
              Navigator.of(context).pop();
              notifyListeners();
              saveDataToStorage(); // Save data to GetStorage
            },
          );
        });
  }

   // Function to save data to GetStorage
  void saveDataToStorage() {
    final dataToSave = categoryMap.map((key, value) {
      final listToSave = value.map((item) => item.toJson()).toList();
      return MapEntry(key, listToSave);
    });
    _storage.write('categoryMap', dataToSave);
  }

  // Function to load data from GetStorage during app startup
  void loadDataFromStorage() {
    final data = _storage.read('categoryMap');
    if (data != null && data is Map<String, dynamic>) {
      categoryMap.clear();
      data.forEach((key, value) {
        if (value is List<dynamic>) {
          final itemList = value
              .map((item) => CategoryItem.fromJson(item))
              .toList();
          categoryMap[key] = itemList;
        }
      });
    }
  }
}
