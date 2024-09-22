import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/quiz_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/section_questions_view.dart';
import 'package:quiz_app/utils/colors.dart';

class QuizListViewWidget extends StatelessWidget {
  const QuizListViewWidget({
    super.key,
    required List<Quiz> quiz,
  }) : _quiz = quiz;

  final List<Quiz> _quiz;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _quiz.length,
      itemBuilder: (context, index) {
        return Card(
          color: kPrimaryColor.withOpacity(0.5),
          child: ListTile(
            title: Text(
              _quiz[index].title,
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (_) =>
                      SectionQuestionsViewWidget(quiz: _quiz[index])));
            },
          ),
        );
      },
    );
  }
}
