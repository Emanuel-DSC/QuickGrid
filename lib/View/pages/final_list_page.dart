import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lista_mercado/constants/padding.dart';
import 'package:lista_mercado/models/categories_model.dart';
import 'package:provider/provider.dart';
import '../../constants/lists.dart';
import '../../themes/models/theme_models.dart';
import '../widgets/empty_list_widget.dart';
import '../widgets/item_card_final_list_widget.dart';
import '../widgets/my_app_bar_widget.dart';
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
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: MyAppBar(
        themeNotifier: themeNotifier,
        icon: null,
      ),
      body: listaFinal.isEmpty
          ? EmptyPage(text: 'Nenhum item no carrinho')
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: kpadding10),
                  Text(
                    'Itens já no carrinho'.toUpperCase(),
                    style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.grey[700],
                    ),
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
            ),
      floatingActionButton: Visibility(
        visible: listaFinal.isEmpty ? false : true,
        child: FloatingActionButton(
          onPressed: () => CategoryProvider().reset(context),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          child: const Icon(Icons.clear_rounded),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigation(),
    );
  }
}
