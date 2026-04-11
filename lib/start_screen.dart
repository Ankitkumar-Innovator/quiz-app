import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 60),
        Image.asset(
          'assets/images/app_landing_page.png',
          color: const Color.fromARGB(180, 169, 138, 226),
        ),
        const SizedBox(height: 60),
        Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: const Color.fromARGB(255, 220, 190, 237),
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 45),
        FilledButton.icon(
          onPressed: startQuiz
          ,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz 🏆'),
        ),
      ],
    );
  }
}
