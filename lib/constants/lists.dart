import 'package:flutter/material.dart';

import '../models/category_item_model.dart';


List<CategoryItem> listaAlimentosBasicos = [];
List<CategoryItem> listaBebidas = [];
List<CategoryItem> listaBebidasAlcolicas = [];
List<CategoryItem> listaBiscoitosSalgadinhos = [];
List<CategoryItem> listaFeira = [];
List<CategoryItem> listaCarnesAvesPeixes = [];
List<CategoryItem> listaCongeladosResfriados = [];
List<CategoryItem> listaFriosLaticinios = [];
List<CategoryItem> listaLeitesIogurtes = [];
List<CategoryItem> listaMolhosCondimentosConservas = [];
List<CategoryItem> listaPadaria = [];
List<CategoryItem> listaDocesSobremesas = [];
List<CategoryItem> listaHigiene = [];
List<CategoryItem> listaSuplementosVitaminas = [];
List<CategoryItem> listaLimpeza = [];
List<CategoryItem> listaUtensiliosParaLar = [];
List<CategoryItem> listaFinal = [];

List categorias = [
  'Alimentos Básicos',
  'Bebidas',
  'Bebidas Alcoólicas',
  'Biscoitos e Salgadinhos',
  'Feira',
  'Carnes, Aves e Peixes',
  'Congelados e Resfriados',
  'Frios e Laticínios',
  'Leites e Iogurtes',
  'Molhos e Condimentos',
  'Padaria',
  'Doces e Sobremesas',
  'Higiene',
  'Suplementos e Vitaminas',
  'Limpeza',
  'Utensílios para o lar'
];

final Map<String, List<CategoryItem>> categoryMap = {
  'Alimentos Básicos': listaAlimentosBasicos,
  'Bebidas': listaBebidas,
  'Bebidas Alcoólicas': listaBebidasAlcolicas,
  'Biscoitos e Salgadinhos': listaBiscoitosSalgadinhos,
  'Feira': listaFeira,
  'Carnes, Aves e Peixes': listaCarnesAvesPeixes,
  'Congelados e Resfriados': listaCongeladosResfriados,
  'Frios e Laticínios': listaFriosLaticinios,
  'Leites e Iogurtes': listaLeitesIogurtes,
  'Molhos e Condimentos e Conservas': listaMolhosCondimentosConservas,
  'Padaria': listaPadaria,
  'Doces e Sobremesas': listaDocesSobremesas,
  'Higiene': listaHigiene,
  'Suplementos e Vitaminas': listaSuplementosVitaminas,
  'Limpeza': listaLimpeza,
  'Utensílios para o lar': listaUtensiliosParaLar,
};

List<String> categoryImagePaths = [
  'assets/menu.png',
  'assets/soft-drink.png',
  'assets/liquor.png',
  'assets/cookie.png',
  'assets/fruits.png',
  'assets/meat.png',
  'assets/fish.png',
  'assets/dairy-products.png',
  'assets/yoghurt.png',
  'assets/mustard.png',
  'assets/bakery.png',
  'assets/candy.png',
  'assets/amenities.png',
  'assets/vitamin.png',
  'assets/cleaning.png',
  'assets/cooking-tools.png',
];

List<Color> categoryColors = [
  Colors.redAccent,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.red,
  Colors.cyan,
  Colors.deepOrange,
  Colors.indigo,
  Colors.lime,
  Colors.brown,
  Colors.purpleAccent,
  Colors.teal,
  Colors.lightBlue,
  Colors.lightGreenAccent,
  Colors.pink,
];
