import 'package:flutter/material.dart';
import 'package:lista_mercado/lists.dart';
import 'package:lista_mercado/models/categories_model.dart';
import 'package:lista_mercado/widgets/item_card_final_list_widget.dart';
import 'package:lista_mercado/widgets/my_app_bar_widget.dart';
import 'package:lista_mercado/widgets/my_fab.dart';
import 'package:provider/provider.dart';
import '../themes/models/theme_models.dart';
import '../widgets/my_bottom_nav_bar_widget.dart';

class FinalListPage extends StatefulWidget {
  const FinalListPage({super.key});

  @override
  State<FinalListPage> createState() => _FinalListPageState();
}

class _FinalListPageState extends State<FinalListPage> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: MyAppBar(themeNotifier: themeNotifier),
      body: listaFinal.isEmpty
          ? const Center(
              child: Text('Nenhum item concluído'),
            )
          : Column(
              children: [
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => CategoryProvider().reset(context),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        child: const Icon(Icons.clear_rounded),
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
