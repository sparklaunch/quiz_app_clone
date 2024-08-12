import 'package:flutter/material.dart';
import 'package:quiz_app_clone/models/screen.dart';

class StartScreen extends StatelessWidget {
  final void Function(Screen screen) changeScreen;
  const StartScreen({super.key, required this.changeScreen});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/Logo.png",
            width: 300,
          ),
          const SizedBox(height: 30),
          const Text(
            "Flutter Quiz App",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              changeScreen(Screen.quizScreen);
            },
            child: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
