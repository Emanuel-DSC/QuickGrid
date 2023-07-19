// category_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_storage/get_storage.dart'; // Import GetStorage

import '../lists.dart';
import '../models/categories_model.dart';
import '../models/category_item_model.dart';
import '../widgets/item_card_widget.dart';

class CategoryPage extends StatefulWidget {
  final String name;
  static List<CategoryItem> itemList = [];

  const CategoryPage({Key? key, required this.name}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    super.initState();
    CategoryProvider().loadDataFromStorage(); // Load data from GetStorage
    CategoryPage.itemList = categoryMap[widget.name] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CategoryProvider>(
        builder: (context, categoryProvider, child) {
          return Column(
            children: [
              Center(child: Text(widget.name)),
              Expanded(
                child: ListView.builder(
                  itemCount: CategoryPage.itemList.length,
                  itemBuilder: (BuildContext context, index) {
                    final item = CategoryPage.itemList[index];
                    return ChangeNotifierProvider<CategoryItem>.value(
                      value: item,
                      child: Consumer<CategoryProvider>(
                        builder: (context, provider, _) {
                          return ItemCard(
                            text: item.name,
                            index: index,
                            deleteFunction: () => provider.deleteTask(index, context),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
