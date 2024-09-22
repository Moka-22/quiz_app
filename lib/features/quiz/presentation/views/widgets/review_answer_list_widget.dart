import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/question_model.dart';
import 'package:quiz_app/utils/colors.dart';

class ReviewAnswerListWidget extends StatelessWidget {
  const ReviewAnswerListWidget({
    super.key,
    required this.questions,
    required this.selectedAnswers,
    required this.correctAnswers,
  });

  final List<Question> questions;
  final List<String?> selectedAnswers;
  final List<String?> correctAnswers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return Card(
          color: kPrimaryColor.withOpacity(0.5),
          child: ListTile(
            title: Text(questions[index].question),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Selected Answer: ${selectedAnswers[index] ?? 'None'}'),
                Text('Correct Answer: ${correctAnswers[index]}'),
                Text(
                  selectedAnswers[index] == correctAnswers[index]
                      ? 'Correct'
                      : 'Incorrect',
                  style: TextStyle(
                    color: selectedAnswers[index] == correctAnswers[index]
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
