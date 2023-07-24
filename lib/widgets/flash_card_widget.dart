import 'package:flutter/material.dart';

sucessMessage(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Container(
        height: 60,
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.check,
                color: Colors.white,
                size: 40,
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      'Sucesso!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      'Produto adicionado à categoria.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
  ));
}
