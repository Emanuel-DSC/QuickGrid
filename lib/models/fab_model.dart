import 'package:flutter/material.dart';
import '../lists.dart';

class FloatingActionButtonProvider extends ChangeNotifier {
  void addItemToList() {
    categorias.add('value');
    print(categorias.last);
    notifyListeners();
  }
}
