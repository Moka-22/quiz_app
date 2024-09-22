import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/quiz_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/quiz_listview_widget.dart';
import 'package:quiz_app/utils/colors.dart';

import '../models/question_model.dart';

class FlutterView extends StatefulWidget {
  const FlutterView({super.key});
  @override
  State<FlutterView> createState() => _FlutterViewState();
}

class _FlutterViewState extends State<FlutterView> {
  final List<Quiz> _quiz = [
    Quiz(
      lessonIndex: 0,
      title: 'Quiz 1: Basics',
      questions: [
        Question(
          question:
              'What is the purpose of the `MaterialApp` widget in Flutter?',
          options: [
            'To create a basic material design app',
            'To create a custom theme for an app',
            'To handle navigation between screens',
            'To display a list of items'
          ],
          correctAnswer: 'To create a basic material design app',
        ),
        Question(
          question:
              'What is the difference between the `StatelessWidget` and `StatefulWidget` classes in Flutter?',
          options: [
            'The `StatelessWidget` class is used for widgets that can change, while the `StatefulWidget` class is used for widgets that cannot change',
            'The `StatelessWidget` class is used for widgets that cannot change, while the `StatefulWidget` class is used for widgets that can change',
            'The `StatelessWidget` class is used for functional widgets, while the `StatefulWidget` class is used for class-based widgets',
            'The `StatelessWidget` class is used for class-based widgets, while the `StatefulWidget` class is used for functional widgets'
          ],
          correctAnswer:
              'The `StatelessWidget` class is used for widgets that cannot change, while the `StatefulWidget` class is used for widgets that can change',
        ),
        Question(
          question:
              'What is the purpose of the `hot reload` feature in Flutter?',
          options: [
            'To restart the app from the beginning',
            'To refresh the app UI',
            'To update the app code without restarting the app',
            'To debug the app'
          ],
          correctAnswer: 'To update the app code without restarting the app',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 1,
      title: 'Quiz 2: Intermediate',
      questions: [
        Question(
          question:
              'What is the purpose of the `ValueListenableBuilder` widget in Flutter?',
          options: [
            'To listen to changes in a `ValueListenable` object and rebuild the widget tree',
            'To create a custom animation curve',
            'To handle gestures and touch events',
            'To display a list of items with a custom layout'
          ],
          correctAnswer:
              'To listen to changes in a `ValueListenable` object and rebuild the widget tree',
        ),
        Question(
          question:
              'What is the difference between the `Provider` and `Riverpod` state management libraries in Flutter?',
          options: [
            'Provider is a simpler, more lightweight library, while Riverpod is more powerful and feature-rich',
            'Provider is a more powerful and feature-rich library, while Riverpod is simpler and more lightweight',
            'Provider is used for global state management, while Riverpod is used for local state management',
            'Provider is used for local state management, while Riverpod is used for global state management'
          ],
          correctAnswer:
              'Provider is a simpler, more lightweight library, while Riverpod is more powerful and feature-rich',
        ),
        Question(
          question:
              'What is the purpose of the `CustomScrollView` widget in Flutter?',
          options: [
            'To create a custom scroll view with a fixed height',
            'To create a custom scroll view with a dynamic height',
            'To handle scrolling events and gestures',
            'To display a list of items with a custom layout'
          ],
          correctAnswer: 'To create a custom scroll view with a dynamic height',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 2,
      title: 'Quiz 3: Advanced',
      questions: [
        Question(
          question:
              'What is the purpose of the `WidgetsBinding` class in Flutter, and how is it used to schedule frames?',
          options: [
            'The `WidgetsBinding` class is used to schedule frames by providing a way to access the `SchedulerBinding` instance, and it is used by calling the `WidgetsBinding.instance.scheduleFrame` method',
            'The `WidgetsBinding` class is used to schedule frames by providing a way to access the `WidgetsBinding` instance, and it is used by calling the `WidgetsBinding.instance.scheduleFrameCallback` method',
            'The `WidgetsBinding` class is used to schedule frames by providing a way to access the `SchedulerBinding` instance, and it is used by calling the `WidgetsBinding.instance.scheduleFrameCallback` method',
            'The `WidgetsBinding` class is used to schedule frames by providing a way to access the `WidgetsBinding` instance, and it is used by calling the `WidgetsBinding.instance.addPostFrameCallback` method'
          ],
          correctAnswer:
              'The `WidgetsBinding` class is used to schedule frames by providing a way to access the `SchedulerBinding` instance, and it is used by calling the `WidgetsBinding.instance.scheduleFrame` method',
        ),
        Question(
          question:
              'What is the difference between the `compute` function and the `computeAsync` function in Flutter, and when would you use each?',
          options: [
            'The `compute` function is used for synchronous computations, while the `computeAsync` function is used for asynchronous computations',
            'The `compute` function is used for asynchronous computations, while the `computeAsync` function is used for synchronous computations',
            'The `compute` function is used for computations that require a return value, while the `computeAsync` function is used for computations that do not require a return value',
            'The `compute` function is used for computations that do not require a return value, while the `computeAsync` function is used for computations that require a return value'
          ],
          correctAnswer:
              'The `compute` function is used for synchronous computations, while the `computeAsync` function is used for asynchronous computations',
        ),
        Question(
          question:
              'What is the purpose of the `Layer` class in Flutter, and how is it used to optimize performance?',
          options: [
            'The `Layer` class is used to optimize performance by providing a way to cache and reuse composited layers, and it is used by creating a custom `Layer` subclass and overriding the `update` method',
            'The `Layer` class is used to optimize performance by providing a way to cache and reuse composited layers, and it is used by creating a custom `Layer` subclass and overriding the `paint` method',
            'The `Layer` class is used to optimize performance by providing a way to cache and reuse composited layers, and it is used by creating a custom `Layer` subclass and overriding the `compose` method',
            'The `Layer` class is used to optimize performance by providing a way to cache and reuse composited layers, and it is used by creating a custom `Layer` subclass and overriding the `preroll` method'
          ],
          correctAnswer:
              'The `Layer` class is used to optimize performance by providing a way to cache and reuse composited layers, and it is used by creating a custom `Layer` subclass and overriding the `update` method',
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Flutter Quiz'),
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
