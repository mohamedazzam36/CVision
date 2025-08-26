import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

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
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
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
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),

            /// Skills
            SalomonBottomBarItem(
              icon: const Icon(Icons.bar_chart),
              title: const Text("Skills"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),

            /// Library
            SalomonBottomBarItem(
              icon: const Icon(Icons.menu_book),
              title: const Text("Library"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}
