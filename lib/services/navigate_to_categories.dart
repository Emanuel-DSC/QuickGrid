import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/category_page.dart';

void navigateToCategoriesPage(context, name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryPage(name: name,   
        ),
      ),
    );
  }
