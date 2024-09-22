import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/question_model.dart';
import 'package:quiz_app/features/quiz/presentation/models/quiz_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/quiz_listview_widget.dart';
import 'package:quiz_app/utils/colors.dart';

class DartView extends StatefulWidget {
  const DartView({super.key});

  @override
  State<DartView> createState() => _DartViewState();
}

class _DartViewState extends State<DartView> {
  final List<Quiz> _quiz = [
    Quiz(
      lessonIndex: 0,
      title: 'Quiz 1: Basics',
      questions: [
        Question(
          question:
              'What is the purpose of the main function in a Dart program?',
          options: [
            'To define a class ',
            'To declare a variable ',
            'To serve as the entry point of the program ',
            'To import a library'
          ],
          correctAnswer: 'To serve as the entry point of the program',
        ),
        Question(
          question:
              'What is the data type of the variable `x` in the following code: `var x = 10;`?',
          options: ['int', 'double', 'String', 'dynamic'],
          correctAnswer: 'int',
        ),
        Question(
          question:
              'Which of the following is a valid way to print output to the console in Dart?',
          options: [
            'print("Hello, World!");',
            'console.log("Hello, World!");',
            'System.out.println("Hello, World!");',
            'Debug.write("Hello, World!");'
          ],
          correctAnswer: 'print("Hello, World!");',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 1,
      title: 'Quiz 2: Intermediate',
      questions: [
        Question(
          question:
              'What is the purpose of the `Future.delayed` constructor in Dart?',
          options: [
            'To create a Future that completes immediately',
            'To create a Future that completes after a specified delay',
            'To create a Future that never completes',
            'To create a Future that completes with an error'
          ],
          correctAnswer:
              'To create a Future that completes after a specified delay',
        ),
        Question(
          question:
              'What is the difference between the `==` and `===` operators in Dart?',
          options: [
            'The `==` operator checks for reference equality, while the `===` operator checks for value equality',
            'The `==` operator checks for value equality, while the `===` operator checks for reference equality',
            'The `==` operator is used for numeric comparisons, while the `===` operator is used for string comparisons',
            'The `==` operator is used for string comparisons, while the `===` operator is used for numeric comparisons'
          ],
          correctAnswer:
              'The `==` operator checks for value equality, while the `===` operator is not a valid operator in Dart',
        ),
        Question(
          question: 'What is the purpose of the `Stream` class in Dart?',
          options: [
            'To handle asynchronous computations',
            'To handle synchronous computations',
            'To handle asynchronous I/O operations',
            'To handle a sequence of asynchronous events'
          ],
          correctAnswer: 'To handle a sequence of asynchronous events',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 2,
      title: 'Quiz 3: Advanced',
      questions: [
        Question(
          question:
              'What is the purpose of the `InheritedWidget` class in Flutter?',
          options: [
            'To manage the widget tree',
            'To handle widget layout',
            'To provide a way to share data between widgets',
            'To optimize widget rendering'
          ],
          correctAnswer: 'To provide a way to share data between widgets',
        ),
        Question(
          question:
              'What is the difference between the `sync*` and `async*` keywords in Dart?',
          options: [
            'The `sync*` keyword is used for synchronous generators, while the `async*` keyword is used for asynchronous generators',
            'The `sync*` keyword is used for asynchronous generators, while the `async*` keyword is used for synchronous generators',
            'The `sync*` keyword is used for iterators, while the `async*` keyword is used for streams',
            'The `sync*` keyword is used for streams, while the `async*` keyword is used for iterators'
          ],
          correctAnswer:
              'The `sync*` keyword is used for synchronous generators, while the `async*` keyword is used for asynchronous generators',
        ),
        Question(
          question: 'What is the purpose of the ` isolates` in Dart?',
          options: [
            'To run multiple threads concurrently',
            'To run multiple processes concurrently',
            'To run multiple isolates concurrently, each with its own memory space',
            'To run multiple tasks sequentially'
          ],
          correctAnswer:
              'To run multiple isolates concurrently, each with its own memory space',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Dart Quiz'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: QuizListViewWidget(quiz: _quiz),
            ),
          ],
        ),
      ),
    );
  }
}
