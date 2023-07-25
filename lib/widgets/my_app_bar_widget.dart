import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/home_page.dart';

import '../themes/models/theme_models.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ThemeProvider themeNotifier;
  final IconData? icon;

  const MyAppBar({super.key, required this.themeNotifier, required this.icon});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppBarTheme.of(context).backgroundColor,
      elevation: 0,
      title: SizedBox(
        height: 30,
        child: Image.asset('assets/images/white_logo.png')),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage())),
          child: Icon(icon, color: Colors.white,)),
      actions: [
        IconButton(
          color: Colors.white,
          icon: Icon(
              themeNotifier.isDark ? 
              Icons.nightlight_round : Icons.wb_sunny),
          onPressed: () {
            themeNotifier.isDark = !themeNotifier.isDark;
          },
        ),
      ],
    );
  }
}
