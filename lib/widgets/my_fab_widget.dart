import 'package:flutter/material.dart';
import 'package:lista_mercado/pages/add_item_page.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        type: MaterialType
            .transparency, 
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 202, 250, 209), width: 8.0),
            color: const Color(0xFF39b54a),
            shape: BoxShape.circle,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(
                1000.0), 
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const AddItem())),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(
                Icons.add,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
