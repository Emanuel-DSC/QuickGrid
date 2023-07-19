import 'package:flutter/material.dart';
import 'package:lista_mercado/lists.dart';
import 'package:lista_mercado/models/categories_model.dart';
import 'package:lista_mercado/widgets/item_card_final_list_widget.dart';
import 'package:lista_mercado/widgets/my_app_bar_widget.dart';
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
      body: Column(
        children: [
          const Center(
            child: Text('Página Lista Final'),
          ),
          GestureDetector(
            onTap: () => CategoryProvider().reset(context),
            child: Container(color: Colors.red, height: 100, width: 100,),
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
