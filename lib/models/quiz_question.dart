class QuizQuestion {
  final String question;
  final List<String> answers;
  QuizQuestion(this.question, this.answers);
  List<String> getShuffledAnswers() {
    List<String> answersCopy = [...answers];
    answersCopy.shuffle();
    return answersCopy;
  }
}
