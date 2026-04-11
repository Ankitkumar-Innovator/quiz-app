import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';

import 'package:quiz_app/start_screen.dart';

//Widget class
class MyQuizApp extends StatefulWidget {
  const MyQuizApp({super.key});
  @override
  State<MyQuizApp> createState() {
    return _MyQuizAppState();
  }
}

//State class
class _MyQuizAppState extends State<MyQuizApp> {
 var  activeScreen ='start-screen';

  
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 113, 4, 209),
                Color.fromARGB(255, 45, 18, 69),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen' 
          ? StartScreen(switchScreen) 
          : QuestionsScreen(),
        ),
      ),
    );
  }
}
