import 'package:flutter/material.dart';

import '../themes/models/theme_models.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ThemeProvider themeNotifier;

  const MyAppBar({super.key, required this.themeNotifier});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(themeNotifier.isDark ? "Dark Mode" : "Light Mode"),
      actions: [
        IconButton(
          icon: Icon(themeNotifier.isDark ? Icons.nightlight_round : Icons.wb_sunny),
          onPressed: () {
            themeNotifier.isDark = !themeNotifier.isDark;
          },
        ),
      ],
    );
  }
}