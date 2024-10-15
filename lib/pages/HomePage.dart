import 'package:flutter/material.dart';
import 'package:naiki/components/bottom_nav_bar.dart';
import 'package:naiki/pages/bagPage.dart';
import 'package:naiki/pages/shopPage.dart';

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

 //pages to display 
 final List<Widget> _pages = [
  //shop page 
  ShopPage (),

  //bag page
  BagPage (),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 222, 222, 222),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationbottonbar (index),
      ),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }, 
          icon: Icon
          (
            Icons.menu,
            color: Colors.black,
            )
          )
          )
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
             DrawerHeader(child: Image.asset("lib/images/nikelogo.jpg")),

             const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.black,
              ),
             ),

             //another pages
             //home
             const Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white 
                  ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
             ),

             //about
             const Padding(
              padding: const EdgeInsets.only(left:25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.white 
                  ),
                title: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
             ),
              ],
            ),

            //logout
            const Padding(
              padding: const EdgeInsets.only(left:25.0, bottom: 20),
              child: ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.white 
                  ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
            ),

          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}