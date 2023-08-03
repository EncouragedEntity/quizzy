class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShufledAnswers()
  {
    var newAnswers = List.from(answers).cast<String>();
    newAnswers.shuffle();
    return newAnswers;
  }
}