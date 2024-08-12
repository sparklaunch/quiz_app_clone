import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> userAnswers;
  const ResultScreen({super.key, required this.userAnswers});
  @override
  Widget build(BuildContext context) {
    print(userAnswers);
    return const Placeholder();
  }
}
