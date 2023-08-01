// category_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/lists.dart';
import '../../constants/text.dart';
import '../../database/database.dart';
import '../../models/categories_model.dart';
import '../../models/category_item_model.dart';
import '../../themes/models/theme_models.dart';
import '../widgets/empty_list_widget.dart';
import '../widgets/item_card_widget.dart';
import '../widgets/my_app_bar_widget.dart';

class CategoryPage extends StatefulWidget {
  final String name;
  static List<CategoryItem> itemList = [];

  const CategoryPage({Key? key, required this.name}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  DataBase db = DataBase();

  @override
  void initState() {
    super.initState();
    db.loadDataFromStorage(); 
    CategoryPage.itemList = categoryMap[widget.name] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(
        themeNotifier: themeNotifier,
        icon: Icons.arrow_back_ios_rounded,
      ),
      body: CategoryPage.itemList.isEmpty
          ? EmptyPage(text: kNoItemAddedText)
          : Consumer<CategoryProvider>(
              builder: (context, categoryProvider, child) {
                return Column(
                  children: [
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
                                  themeNotifier: themeNotifier,
                                  deleteFunction: () =>
                                      provider.deleteTask(index, context),
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
