import 'package:flutter/material.dart';

class ProofitTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF00C805), // "Profit Green"
      scaffoldBackgroundColor: const Color(0xFF0E1116),
      cardColor: const Color(0xFF1C2128),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF0E1116),
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        bodyMedium: TextStyle(color: Color(0xFF8B949E)),
      ),
    );
  }
}
