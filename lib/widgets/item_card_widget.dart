import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String text;

  ItemCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: Scaffold(
        body: Container(
          color: Colors.purple,
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
