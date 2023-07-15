import 'models/category_item_model.dart';

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
  'Molhos, Condimentos e Conservas',
  'Padaria',
  'Doces e Sobremesas',
  'Higiene',
  'Suplementos e Vitaminas',
  'Limpeza',
  'Utensílios para o lar'
];

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
    'Molhos, Condimentos e Conservas': listaMolhosCondimentosConservas,
    'Padaria': listaPadaria,
    'Doces e Sobremesas': listaDocesSobremesas,
    'Higiene': listaHigiene,
    'Suplementos e Vitaminas': listaSuplementosVitaminas,
    'Limpeza': listaLimpeza,
    'Utensílios para o lar': listaUtensiliosParaLar,
  };