import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/bottom_nav_model.dart';
import 'pages/home_page.dart';
import 'themes/models/theme_models.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BottomNavigationBarProvider(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
          builder: (context, ThemeProvider themeNotifier, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: themeNotifier.isDark
              ? ThemeData(
                  brightness: Brightness.dark,
                )
              : ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.green,
                  primarySwatch: Colors.green),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
      }),
    );
  }
}
