// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

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
              const TextFieldWidget(
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
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: categorias.length,
                  itemBuilder: (BuildContext context, int index) {
                    String teste = categorias[index].toString();
                    return CategoriesCard(
                      text: teste,
                      onTap: () {
                    },
                    );
                  }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}