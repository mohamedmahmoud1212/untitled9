import 'package:drugstore/Screens/CategoriesPage.dart';
import 'package:drugstore/Screens/favorite_page.dart';
import 'package:drugstore/Screens/message_page.dart';
import 'package:drugstore/Screens/profile.dart';
import 'package:flutter/material.dart';

class botton_navigator extends StatefulWidget {
  const botton_navigator({super.key});

  @override
  State<botton_navigator> createState() => _botton_navigatorState();
}

class _botton_navigatorState extends State<botton_navigator> {
  List<Widget> pages = [CategoriesPage(), profile() , favorite() , message_page()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
      
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label:""),
         BottomNavigationBarItem(icon: Icon(Icons.person), label:""), 
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label:""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label:""),
      ]),
      body: Center(
        child: pages.elementAt(index),
      ),
    );
  }
}
