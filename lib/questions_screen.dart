import 'package:flutter/material.dart';

import 'package:quiz_app/answers_botton.dart';

import 'package:quiz_app/data/questions.dart';

//Widget class
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

//State class
class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
      if (currentQuestionIndex > 15) {
        currentQuestionIndex = 0;
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Vertical centre
          crossAxisAlignment: CrossAxisAlignment.stretch, //Horizontal centre
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 34),

            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswersBotton(answerText: answer, onTap: answerQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
