import 'package:flutter/material.dart';
import 'package:lista_mercado/widgets/my_app_bar_widget.dart';
import 'package:provider/provider.dart';
import '../themes/models/theme_models.dart';
import '../widgets/my_bottom_nav_bar_widget.dart';

class FinalListPage extends StatelessWidget {
  const FinalListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: MyAppBar(themeNotifier: themeNotifier),
      body: const Center(child: Text('Página Lista Final'),),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}