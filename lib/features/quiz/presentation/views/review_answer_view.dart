import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/views/quiz_view.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/review_answer_list_widget.dart';
import 'package:quiz_app/utils/colors.dart';

import '../models/question_model.dart';

class ReviewAnswersView extends StatelessWidget {
  final List<Question> questions;
  final List<String?> selectedAnswers;
  final List<String?> correctAnswers;
  final int score;

  const ReviewAnswersView({
    required this.questions,
    required this.selectedAnswers,
    required this.correctAnswers,
    required this.score,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Review Answers'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => QuizView()));
            },
          ),
        ],
      ),
      body: ReviewAnswerListWidget(
          questions: questions,
          selectedAnswers: selectedAnswers,
          correctAnswers: correctAnswers),
    );
  }
}
