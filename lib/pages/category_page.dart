// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:lista_mercado/widgets/item_card_widget.dart';

import '../lists.dart';
import '../models/category_item_model.dart';

class CategoryPage extends StatefulWidget {
  final String name;
  static List<CategoryItem> itemList = []; // Adicione essa variável

  CategoryPage({Key? key, required this.name}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    super.initState();
    switch (widget.name) {
      case 'Alimentos Básicos':
        CategoryPage.itemList = listaAlimentosBasicos;
        break;
      case 'Bebidas':
        CategoryPage.itemList = listaBebidas;
        break;
      case 'Bebidas Alcoólicas':
        CategoryPage.itemList = listaBebidasAlcolicas;
        break;
      case 'Biscoitos e Salgadinhos':
        CategoryPage.itemList = listaBiscoitosSalgadinhos;
        break;
      case 'Feira':
        CategoryPage.itemList = listaFeira;
        break;
      case 'Carnes, Aves e Peixes':
        CategoryPage.itemList = listaCarnesAvesPeixes;
        break;
      case 'Congelados e Resfriados':
        CategoryPage.itemList = listaCongeladosResfriados;
        break;
      case 'Frios e Laticínios':
        CategoryPage.itemList = listaFriosLaticinios;
        break;
      case 'Leites e Iogurtes':
        CategoryPage.itemList = listaLeitesIogurtes;
        break;
      case 'Molhos, Condimentos e Conservas':
        CategoryPage.itemList = listaMolhosCondimentosConservas;
        break;
      case 'Padaria':
        CategoryPage.itemList = listaPadaria;
        break;
      case 'Doces e Sobremesas':
        CategoryPage.itemList = listaDocesSobremesas;
        break;
      case 'Higiene':
        CategoryPage.itemList = listaHigiene;
        break;
      case 'Suplementos e Vitaminas':
        CategoryPage.itemList = listaSuplementosVitaminas;
        break;
      case 'Limpeza':
        CategoryPage.itemList = listaLimpeza;
        break;
      case 'Utensílios para o lar':
        CategoryPage.itemList = listaUtensiliosParaLar;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text(widget.name)),
          Expanded(
            child: ListView.builder(
              itemCount: CategoryPage.itemList.length,
              itemBuilder: (BuildContext context, index) {
                String name = CategoryPage.itemList[index].name;
                return ItemCard(text: name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
