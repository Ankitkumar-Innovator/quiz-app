import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 3, 104, 116),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        minimumSize: const Size(double.infinity, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            40,
          ), // Optional: rounds the button
        ),
      ),
      child: Text(
        answerText, // The string goes here
        style: GoogleFonts.goldman(
          fontSize: 16, // You can now easily add more styles here
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
