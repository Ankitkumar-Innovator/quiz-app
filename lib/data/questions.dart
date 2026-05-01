import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  //List of quiz question objects with answers

  //Question : 01
  QuizQuestion('What are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),

  //Question : 02
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),

  //Question : 03
  QuizQuestion('What\'s the purpose of a StatefulWidget?', [
    'Update UI as data changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ]),

  //Question : 04
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),

  //Question : 04
  QuizQuestion('What happens if you change data in a StatelessWidget?', [
    'The UI is not updated',
    'The UI is updated',
    'The closest StatefulWidget is updated',
    'Any nested StatefulWidgets are updated',
  ]),

  //Question : 05
  QuizQuestion('How should you update data inside of StatefulWidgets?', [
    'By calling setState()',
    'By calling updateData()',
    'By calling updateUI()',
    'By calling updateState()',
  ]),

  //Question : 06
  QuizQuestion(
    'Which method is called when a StatefulWidget is first created?',
    ['initState()', 'build()', 'onCreate()', 'startState()'],
  ),

  //Question : 07
  QuizQuestion('What is the purpose of the build() method?', [
    'To describe the UI part represented by the widget',
    'To initialize variables',
    'To fetch data from a database',
    'To handle user input events',
  ]),

  //Question : 08
  QuizQuestion('Which programming language is used to develop Flutter apps?', [
    'Dart',
    'Kotlin',
    'Swift',
    'Java',
  ]),

  //Question : 09
  QuizQuestion('What does "Hot Reload" do in Flutter?', [
    'Injects updated source code into the running VM',
    'Restarts the entire application',
    'Recompiles the code to native binary',
    'Clears the app cache and data',
  ]),

  //Question : 10
  QuizQuestion('Which widget is commonly used for basic layout positioning?', [
    'Column',
    'Text',
    'ButtonStyle',
    'Appbar',
  ]),

  //Question : 11
  QuizQuestion('What is the root of a Flutter application?', [
    'The Widget Tree',
    'The Main Function',
    'The Pubspec File',
    'The Assets Folder',
  ]),

  //Question : 12
  QuizQuestion(
    'Which widget allows you to stack elements on top of each other?',
    ['Stack', 'Row', 'ListView', 'Container'],
  ),

  //Question : 13
  QuizQuestion('What is the function of pubspec.yaml?', [
    'To manage project dependencies and assets',
    'To write the main application logic',
    'To configure Android specific settings',
    'To store user profile data',
  ]),

  //Question : 14
  QuizQuestion('Which widget provides a default app bar and drawer?', [
    'Scaffold',
    'MaterialApp',
    'Container',
    'SizedBox',
  ]),

  //Question : 15
  QuizQuestion('In Flutter, everything is a...', [
    'Widget',
    'Object',
    'Component',
    'Module',
  ]),
];
