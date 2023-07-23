import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/home_page.dart';

import '../themes/models/theme_models.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ThemeProvider themeNotifier;
  final IconData? icon;
  final String title;

  const MyAppBar({super.key, required this.themeNotifier, required this.icon, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(title),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage())),
          child: Icon(icon)),
      actions: [
        IconButton(
          icon: Icon(
              themeNotifier.isDark ? Icons.nightlight_round : Icons.wb_sunny),
          onPressed: () {
            themeNotifier.isDark = !themeNotifier.isDark;
          },
        ),
      ],
    );
  }
}
