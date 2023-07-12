// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:lista_mercado/models/categories_model.dart';
import 'package:lista_mercado/pages/home_page.dart';
import '../constants/padding.dart';
import '../lists.dart';
import '../widgets/categories_card_widget.dart';
import '../widgets/my_textfield_widget.dart';

class AddItem extends StatefulWidget {
  const AddItem({
    super.key,
  });

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final TextEditingController controller = TextEditingController();
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: kpadding20),
              const Text('teste'),
              SizedBox(height: kpadding10),
              TextFieldWidget(
                controller: controller,
                keyboardType: TextInputType.name,
                hintText: 'Nome do produto',
              ),
              SizedBox(height: kpadding30),
              const Text('teste'),
              SizedBox(height: kpadding10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemCount: categorias.length,
                    itemBuilder: (BuildContext context, int index) {
                      String name = categorias[index].toString();
                      return CategoriesCard(
                          text: name,
                          onTap: () {
                            switch (categorias[index]) {
                              case 'Alimentos Básicos':
                                CategoryProvider().addItemToList(
                                    controller.text, listaAlimentosBasicos);
                                break;
                              case 'Bebidas':
                                CategoryProvider().addItemToList(
                                    controller.text, listaBebidas);
                                break;
                              case 'Bebidas Alcoólicas':
                                CategoryProvider().addItemToList(
                                    controller.text, listaBebidasAlcolicas);
                                break;
                              case 'Biscoitos e Salgadinhos':
                                CategoryProvider().addItemToList(
                                    controller.text, listaBiscoitosSalgadinhos);
                                break;
                              case 'Feira':
                                CategoryProvider()
                                    .addItemToList(controller.text, listaFeira);
                                break;
                              case 'Carnes, Aves e Peixes':
                                CategoryProvider().addItemToList(
                                    controller.text, listaCarnesAvesPeixes);
                                break;
                              case 'Congelados e Resfriados':
                                CategoryProvider().addItemToList(
                                    controller.text, listaCongeladosResfriados);
                                break;
                              case 'Frios e Laticínios':
                                CategoryProvider().addItemToList(
                                    controller.text, listaFriosLaticinios);
                                break;
                              case 'Leites e Iogurtes':
                                CategoryProvider().addItemToList(
                                    controller.text, listaLeitesIogurtes);
                                break;
                              case 'Molhos, Condimentos e Conservas':
                                CategoryProvider().addItemToList(
                                    controller.text,
                                    listaMolhosCondimentosConservas);
                                break;
                              case 'Padaria':
                                CategoryProvider().addItemToList(
                                    controller.text, listaPadaria);
                                break;
                              case 'Doces e Sobremesas':
                                CategoryProvider().addItemToList(
                                    controller.text, listaDocesSobremesas);
                                break;
                              case 'Higiene':
                                CategoryProvider().addItemToList(
                                    controller.text, listaHigiene);
                                break;
                              case 'Suplementos e Vitaminas':
                                CategoryProvider().addItemToList(
                                    controller.text, listaSuplementosVitaminas);
                                break;
                              case 'Limpeza':
                                CategoryProvider().addItemToList(
                                    controller.text, listaLimpeza);
                                break;
                              case 'Utensílios para o lar':
                                CategoryProvider().addItemToList(
                                    controller.text, listaUtensiliosParaLar);
                                break;
                              default:
                            }
                            CategoryProvider().setSelectedCategory(name);
                            CategoryProvider().navigateToCategoriesPage(
                              context,
                              name,
                            );
                          });
                    }),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomePage(),
                  ),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
