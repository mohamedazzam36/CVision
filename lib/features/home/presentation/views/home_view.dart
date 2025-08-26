import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 1; // Skills tab as default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Page: $_currentIndex",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),

            /// Skills
            SalomonBottomBarItem(
              icon: Icon(Icons.bar_chart),
              title: Text("Skills"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),

            /// Library
            SalomonBottomBarItem(
              icon: Icon(Icons.menu_book),
              title: Text("Library"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}