import 'package:flutter/material.dart';
import 'package:quiz_app_clone/screens/main_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: MainScreen(),
      ),
    ),
  );
}
