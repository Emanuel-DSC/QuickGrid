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
  'Carnes, Aves e Peixes',
  'Congelados e Resfriados',
  'Doces e Sobremesas',
  'Feira',
  'Frios e Laticínios',
  'Higiene Pessoal',
  'Leites e Iogurtes',
  'Limpeza',
  'Molhos e Condimentos',
  'Padaria',
  'Suplementos e Vitaminas',
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
  'Molhos e Condimentos': listaMolhosCondimentosConservas,
  'Padaria': listaPadaria,
  'Doces e Sobremesas': listaDocesSobremesas,
  'Higiene Pessoal': listaHigiene,
  'Suplementos e Vitaminas': listaSuplementosVitaminas,
  'Limpeza': listaLimpeza,
  'Utensílios para o lar': listaUtensiliosParaLar,
};

List<String> categoryImagePaths = [
  'assets/images/menu.png',
  'assets/images/soft-drink.png',
  'assets/images/liquor.png',
  'assets/images/cookie.png',
  'assets/images/meat.png',
  'assets/images/fish.png',
  'assets/images/candy.png',
  'assets/images/fruits.png',
  'assets/images/dairy-products.png',
  'assets/images/amenities.png',
  'assets/images/yoghurt.png',
  'assets/images/cleaning.png',
  'assets/images/mustard.png',
  'assets/images/bakery.png',
  'assets/images/vitamin.png',
  'assets/images/cooking-tools.png',
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
