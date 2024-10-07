import 'package:flutter/material.dart';
import 'package:naiki/components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the button nav bar 
  int _selectedIndex = 0;

  //this method will update our detected index
  // when the user tap on the button bar
 void navigationbottonbar(int index) {
  setState(() {
    _selectedIndex = index;
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 222, 222, 222),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationbottonbar (index),
      ),
    );
  }
}