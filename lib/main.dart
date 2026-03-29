import 'package:flutter/material.dart';
import 'package:proofit/theme/app_theme.dart';
import 'package:proofit/screens/arena_screen.dart';

void main() {
  runApp(ProofitApp());
}

class ProofitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PROOFIT',
      debugShowCheckedModeBanner: false,
      theme: ProofitTheme.darkTheme,
      home: ArenaScreen(),
    );
  }
}
