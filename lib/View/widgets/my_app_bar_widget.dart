import 'package:flutter/material.dart';

import '../../themes/models/theme_models.dart';
import '../pages/home_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ThemeProvider themeNotifier;
  final IconData? icon;

  const MyAppBar({super.key, required this.themeNotifier, required this.icon});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {

    return AppBar(
      backgroundColor: themeNotifier.isDark? Theme.of(context).colorScheme.primary : AppBarTheme.of(context).backgroundColor,
      elevation: 0,
      flexibleSpace: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: AppBar().preferredSize.height * 1.1,
            child: SizedBox(
              height: 50,
              child: Image.asset('assets/images/white_logo.png'),
            ),
          ),
        ],
      ), 
      leading: GestureDetector(
          onTap: () =>
            Navigator.push(context,
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
