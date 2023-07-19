import 'package:get_storage/get_storage.dart';

import '../lists.dart';
import '../models/category_item_model.dart';

class DataBase {
  final _storage = GetStorage(); // Initialize GetStorage instance

  void saveDataToStorage() {
    final dataToSave = categoryMap.map((key, value) {
      final listToSave = value.map((item) => item.toMap()).toList();
      return MapEntry(key, listToSave);
    });
    _storage.write('categoryMap', dataToSave);
  }

  void loadDataFromStorage() {
    final data = _storage.read('categoryMap');
    if (data != null && data is Map<String, dynamic>) {
      categoryMap.clear();
      data.forEach((key, value) {
        if (value is List<dynamic>) {
          final itemList =
              value.map((item) => CategoryItem.fromJson(item)).toList();
          categoryMap[key] = itemList;
        }
      });
    }
  }

  void saveListaFinalToStorage() {
    final dataToSave = listaFinal.map((item) => item.toMap()).toList();
    _storage.write('listaFinal', dataToSave);
  }

  void loadListaFinalFromStorage() {
    final data = _storage.read('listaFinal');
    if (data != null && data is List<dynamic>) {
      listaFinal.clear();
      listaFinal.addAll(data.map((item) => CategoryItem.fromJson(item)));
    }
  }
}
