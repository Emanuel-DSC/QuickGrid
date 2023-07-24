import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/add_item_page.dart';

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
        Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddItem()));
      },
      child: const Icon(Icons.add),
    );
  }
}
