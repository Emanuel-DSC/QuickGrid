import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/bottom_nav_model.dart';
import '../pages/final_list_page.dart';
import '../pages/home_page.dart';
import 'my_icon_icons.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavigationBarProvider>(context);
    
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).colorScheme.primary,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: provider.currentScreenIndex,
        selectedItemColor: const Color(0xFF39b54a),
        unselectedItemColor: Theme.of(context).colorScheme.tertiary,
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
            icon: Icon(MyIcon.home, size: 24),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyIcon.list, size: 24),
            label: '',
          ),
        ],
      ),
    );
  }
}
