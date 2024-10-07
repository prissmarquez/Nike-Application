import 'package:flutter/material.dart';
import 'package:naiki/components/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 222, 222, 222),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}