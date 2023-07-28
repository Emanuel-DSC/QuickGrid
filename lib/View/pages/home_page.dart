import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/lists.dart';
import '../../models/categories_model.dart';
import '../../themes/models/theme_models.dart';
import '../widgets/categories_card_widget.dart';
import '../widgets/my_app_bar_widget.dart';
import '../widgets/my_bottom_nav_bar_widget.dart';
import '../widgets/my_fab_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context, ThemeProvider themeNotifier, child) {
      return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: MyAppBar(
            themeNotifier: themeNotifier,
            icon: null,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 40),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 320,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: categorias.length,
                itemBuilder: (BuildContext context, int index) {
                  String teste = categorias[index].toString();
                  String imagePath = categoryImagePaths[index];
                  return CategoriesCard(
                    onTap: () => CategoryProvider()
                        .navigateToCategoriesPage(context, teste),
                    text: teste,
                    image: imagePath,
                    isVisible: false,
                  );
                }),
          ),
          bottomNavigationBar: const MyBottomNavigation(),
          floatingActionButton: const MyFloatingActionButton());
    });
  }
}
