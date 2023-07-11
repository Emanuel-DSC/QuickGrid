import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../lists.dart';
import '../themes/models/theme_models.dart';
import '../widgets/categories_card_widget.dart';
import '../widgets/my_app_bar_widget.dart';
import '../widgets/my_bottom_nav_bar_widget.dart';
import '../widgets/my_fab.dart';

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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          appBar: MyAppBar(themeNotifier: themeNotifier),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: categorias.length,
                itemBuilder: (BuildContext context, int index) {
                  String teste = categorias[index].toString();
                  return CategoriesCard(onTap: () {
                    
                  },
                    text: teste,
                  );
                }),
          ),
          bottomNavigationBar: const MyBottomNavigation(),
          floatingActionButton: const MyFloatingActionButton());
    });
  }
}
