class QuizQuestion {
  //To set these properties to some values we need a constructor function.We need a  constructor function so that we can reuse this class and create different quiz question objects  with diff texts and answers based on same class blueprint

  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
