// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:lista_mercado/models/categories_model.dart';
import 'package:lista_mercado/pages/home_page.dart';
import 'package:lista_mercado/themes/models/theme_models.dart';
import 'package:lista_mercado/widgets/my_app_bar_widget.dart';
import 'package:provider/provider.dart';
import '../constants/lists.dart';
import '../constants/padding.dart';
import '../widgets/categories_card_widget.dart';
import '../widgets/my_bottom_nav_bar_widget.dart';
import '../widgets/my_textfield_widget.dart';

class AddItem extends StatefulWidget {
  const AddItem({
    super.key,
  });

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final TextEditingController controller = TextEditingController();
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, ThemeProvider themeNotifier, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: MyAppBar(themeNotifier: themeNotifier, icon: Icons.arrow_back_ios, title: 'add item'.toUpperCase(),),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFieldWidget(
                    controller: controller,
                    keyboardType: TextInputType.name,
                    hintText: 'Nome do produto',
                  ),
                ),
                SizedBox(height: kpadding30),
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 320,
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 10),
                      itemCount: categorias.length,
                      itemBuilder: (BuildContext context, int index) {
                        String name = categorias[index].toString();
                        String imagePath = categoryImagePaths[index];
                        Color color = categoryColors[index];
                        return CategoriesCard(
                          text: name,
                          image: imagePath,
                          colors: color,
                          onTap: () {
                            if (categoryMap.containsKey(name)) {
                              CategoryProvider().addItemToList(
                                controller.text,
                                categoryMap[name]!,
                              );
                              CategoryProvider().setSelectedCategory(name);
                            }
                          },
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
