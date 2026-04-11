import 'package:flutter/material.dart';

class AnswersBotton extends StatelessWidget {
  const AnswersBotton({
    required this.answerText,
    required this.onTap,
    super.key,
  });

  final String answerText;

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 3, 104, 116,),
      foregroundColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      
    ), child: Text(answerText ,textAlign: TextAlign.center),
    );
  }
}
