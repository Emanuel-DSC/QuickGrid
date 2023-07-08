import 'package:flutter/material.dart';

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
    // Respond to button press
  },
  child: const Icon(Icons.add),
);
  }
}
