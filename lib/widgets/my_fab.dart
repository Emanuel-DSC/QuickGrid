import 'package:flutter/material.dart';
import 'package:lista_mercado/models/fab_model.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xff03dac6),
      foregroundColor: Colors.black,
      onPressed: () {
        FloatingActionButtonProvider().addItemToList();
      },
      child: const Icon(Icons.add),
    );
  }
}
