import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lista_mercado/database/database.dart';
import 'package:lista_mercado/pages/final_list_page.dart';
import 'package:lista_mercado/themes/themes_colors.dart';
import 'package:provider/provider.dart';
import 'models/bottom_nav_model.dart';
import 'models/categories_model.dart';
import 'models/category_item_model.dart';
import 'pages/home_page.dart';
import 'themes/models/theme_models.dart';

void main() async {
  await GetStorage.init(); // Initialize GetStorage
  DataBase().loadListaFinalFromStorage();
  DataBase().loadDataFromStorage();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationBarProvider>(
          create: (_) => BottomNavigationBarProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider<CategoryItem>(
          create: (_) => CategoryItem(category: '', name: ''),
        ),
        ChangeNotifierProvider<CategoryProvider>(
          create: (_) => CategoryProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: themeNotifier.isDark
              ? MyThemes.darkMode
              : MyThemes.lightMode,
          debugShowCheckedModeBanner: false,
           routes: {
            '/final_list_page': (context) => const FinalListPage(),
          },
          home: ChangeNotifierProvider<CategoryItem>(
            create: (_) => CategoryItem(category: '', name: ''),
            child: const HomePage(),
          ),
        );
      },
    );
  }
}
