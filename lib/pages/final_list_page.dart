import 'package:flutter/material.dart';
import 'package:lista_mercado/lists.dart';
import 'package:lista_mercado/widgets/item_card_final_list_widget.dart';
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
      body: Column(
        children: [
          const Center(
            child: Text('Página Lista Final'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listaFinal.length,
              itemBuilder: (BuildContext context, index) {
                final item = listaFinal[index];
                return ItemCardFinalList(
                  text: item.name,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
