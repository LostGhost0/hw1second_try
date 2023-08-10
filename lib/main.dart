import 'package:flutter/material.dart';
import 'package:hw1second_try/Screens/FirstScreen.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : FirstScreen()  
    );
  }
}
