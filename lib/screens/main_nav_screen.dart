import 'package:flutter/material.dart';
import 'package:proofit/screens/arena_screen.dart';
import 'package:proofit/screens/profile_screen.dart';
import 'package:proofit/screens/add_tip_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    ArenaScreen(),
    AddTipScreen(), // Placeholder for now
    const Center(child: Text("MOJE TYPY (W budowie)")),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1C2128),
        selectedItemColor: const Color(0xFF00C805),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Arena'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Dodaj'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Historia'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}
