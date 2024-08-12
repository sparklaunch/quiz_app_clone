import 'package:flutter/material.dart';
import 'package:quiz_app_clone/models/questions.dart';
import 'package:quiz_app_clone/models/screen.dart';

class QuizScreen extends StatefulWidget {
  final void Function(Screen screen) changeScreen;
  final void Function(String answer) addAnswer;
  const QuizScreen(
      {super.key, required this.changeScreen, required this.addAnswer});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Question ${questionIndex + 1}",
              style: const TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -2),
            ),
            const SizedBox(height: 30),
            Text(
              questions[questionIndex].question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...questions[questionIndex].getShuffledAnswers().map((answer) {
              return SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    nextQuestion(answer);
                  },
                  child: Text(
                    answer,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  void nextQuestion(String answer) {
    if (questionIndex >= questions.length - 1) {
      widget.changeScreen(Screen.resultScreen);
    }
    setState(() {
      questionIndex++;
      widget.addAnswer(answer);
    });
  }
}
