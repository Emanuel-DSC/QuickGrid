import 'package:flutter/material.dart';
import 'package:lista_mercado/lists.dart';
import 'package:lista_mercado/widgets/item_card_widget.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({super.key, required this.name});
  String name;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text(widget.name)),
          Expanded(
            child: ListView.builder(
                itemCount: teste.length,
                itemBuilder: (BuildContext context, index) {
                  String name = teste[index].toString();
                  return ItemCard(text: name);
                }),
          ),
        ],
      ),
    );
  }
}
