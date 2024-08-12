import 'package:flutter/material.dart';
import 'package:quiz_app_clone/models/screen.dart';
import 'package:quiz_app_clone/screens/quiz_screen.dart';
import 'package:quiz_app_clone/screens/result_screen.dart';
import 'package:quiz_app_clone/screens/start_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> userAnswers = [];
  Screen currentScreen = Screen.startScreen;
  void addAnswer(String answer) {
    setState(() {
      userAnswers.add(answer);
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (currentScreen) {
      case Screen.startScreen:
        return StartScreen(changeScreen: changeScreen);
      case Screen.quizScreen:
        return QuizScreen(changeScreen: changeScreen, addAnswer: addAnswer);
      case Screen.resultScreen:
        return ResultScreen(userAnswers: userAnswers);
    }
  }

  void changeScreen(Screen screen) {
    setState(() {
      currentScreen = screen;
    });
  }
}
