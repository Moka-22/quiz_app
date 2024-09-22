import 'package:quiz_app/features/quiz/presentation/models/question_model.dart';

class Quiz {
  final int lessonIndex;
  final String title;
  final List<Question> questions;

  Quiz(
      {required this.lessonIndex,
      required this.title,
      required this.questions});
}
