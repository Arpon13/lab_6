import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  final List<Widget> pages = [
    Container(
      color: Colors.amber,
      child: Text("Home"),
      height: double.infinity,
      alignment: Alignment.center,
    ),
    Container(
      color: Colors.red,
      child: Text("Settings"),
      height: double.infinity,
      alignment: Alignment.center,
    ),
  ];

  void onClickMenu(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickMenu,
        currentIndex: currentIndex,

          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
            ),
        ],),
    );
  }
}