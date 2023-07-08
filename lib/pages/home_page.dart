import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/bottom_nav_model.dart';
import '../themes/models/theme_models.dart';
import '../widgets/bottom_nav_bar_widget.dart';
import '../widgets/my_app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context, ThemeProvider themeNotifier, child) {
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: MyAppBar(themeNotifier: themeNotifier),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Teste",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              );
            }),
        bottomNavigationBar: const MyBottomNavigation(),
        floatingActionButton: FloatingActionButton(
  backgroundColor: const Color(0xff03dac6),
  foregroundColor: Colors.black,
  onPressed: () {
    // Respond to button press
  },
  child: const Icon(Icons.add),
)
      );
    });
  }
}
