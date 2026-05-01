import 'package:flutter/material.dart'; 
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

// Widget class
class MyQuizApp extends StatefulWidget {
  const MyQuizApp({super.key});

  @override
  State<MyQuizApp> createState() {
    return _MyQuizAppState();
  }
}

// State class
class _MyQuizAppState extends State<MyQuizApp> {
  final List<String> _selectedAnswers = []; // Use underscore for private state
  var _activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      _activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        // Don't reset selectedAnswers here!
        // Pass them to ResultsScreen first.
        _activeScreen = 'results-screen';
      });
    }
  }

  // Add this to allow restarting the quiz from Results Screen
  void restartQuiz() {
    setState(() {
      _selectedAnswers.clear(); // 1. Clear the old answers!
      _activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // 1. Determine which screen to show based on state
    Widget screenWidget = StartScreen(switchScreen);

    if (_activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    // Keep this one (it has the restart logic!)
    if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        restartQuiz: restartQuiz,
        chosenAnswers: _selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 113, 4, 209),
                Color.fromARGB(255, 45, 18, 69),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
