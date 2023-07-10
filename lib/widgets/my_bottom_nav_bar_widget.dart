import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/bottom_nav_model.dart';
import '../pages/final_list_page.dart';
import '../pages/home_page.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavigationBarProvider>(context);

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.grey[700],
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: provider.currentScreenIndex,
        onTap: (index) {
          provider.updateScreenIndex(index);
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FinalListPage()),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
      ),
    );
  }
}
