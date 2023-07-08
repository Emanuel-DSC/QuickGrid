import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int screenIndex = 0;

  int get currentScreenIndex => screenIndex;

  void updateScreenIndex(int newIndex) {
    screenIndex = newIndex;
    notifyListeners();
  }
}