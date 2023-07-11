import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  String text;
  ItemCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        width: 300,
        height: 200,
        child: Text(text),
      ),
    );
  }
}
