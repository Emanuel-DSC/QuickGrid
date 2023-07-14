import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/bottom_nav_model.dart';
import 'models/category_item_model.dart';
import 'pages/home_page.dart';
import 'themes/models/theme_models.dart';

void main() {
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
              ? ThemeData(brightness: Brightness.dark)
              : ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.green,
                  primarySwatch: Colors.green,
                ),
          debugShowCheckedModeBanner: false,
          home: ChangeNotifierProvider<CategoryItem>(
            create: (_) => CategoryItem(category: '', name: ''),
            child: const HomePage(),
          ),
        );
      },
    );
  }
}
