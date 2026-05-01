import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartQuiz,
  });

  final void Function() restartQuiz;

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      }); //First answer is always the right one
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQustions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] ==
          data['correct_answer']; //Checkiong if user picked correct answer
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Vertical center
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQustions questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            QuestionsSummary(summaryData),
            SizedBox(height: 36),
            FilledButton.icon(
              onPressed: restartQuiz,
              label: const Text('Restart Quiz'),
              icon: const Icon(Icons.restart_alt_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
