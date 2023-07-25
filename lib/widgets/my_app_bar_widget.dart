import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/home_page.dart';
import 'package:provider/provider.dart';

import '../models/categories_model.dart';
import '../themes/models/theme_models.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ThemeProvider themeNotifier;
  final IconData? icon;

  const MyAppBar({super.key, required this.themeNotifier, required this.icon});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context, listen: false);

    return AppBar(
      backgroundColor: AppBarTheme.of(context).backgroundColor,
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
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
          } ,
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
