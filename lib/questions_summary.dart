import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370, // Increased height slightly for better view
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final isCorrect = data['user_answer'] == data['correct_answer'];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10), // Gap between rows
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns circle to top
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isCorrect
                          ? const Color.fromARGB(255, 73, 246, 111)
                          : const Color.fromARGB(255, 255, 71, 83),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 22, 2, 56),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20), // Spacing between circle and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Your answer: ${data['user_answer']}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 201, 153, 255),
                          ),
                        ),
                        Text(
                          'Correct answer: ${data['correct_answer']}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 152, 252, 242),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
