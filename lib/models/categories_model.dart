// category_provider.dart
import 'package:flutter/material.dart';
import '../View/pages/category_page.dart';
import '../View/widgets/flash_card_widget.dart';
import '../View/widgets/my_alert_dialog_widget.dart';
import '../constants/lists.dart';
import '../database/database.dart';
import 'category_item_model.dart';

class CategoryProvider extends ChangeNotifier {
  String selectedCategory = '';
  List<int> selectedItems = [];
  DataBase db = DataBase();

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

  void addItemToList(
      String name, List<CategoryItem> list, context, controller, category) {
    if (controller.text.isNotEmpty) {
      final item = CategoryItem(name: name, category: selectedCategory);
      list.add(item);
      notifyListeners();
      db.saveDataToStorage();
      flashMessage(context, name, category, Colors.green, Icons.check, 'Sucesso!', 
          '$name adicionado à $category.');
      controller.clear();
    } else {
      flashMessage(context, name, category, Colors.red, Icons.close, 'Falha!',
          'Produto não informado. Verifique a caixa de texto.');
    }
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
