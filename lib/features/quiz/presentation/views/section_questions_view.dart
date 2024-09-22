import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/quiz_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/review_answer_view.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/quiz_finished_view_widget.dart';
import 'package:quiz_app/utils/colors.dart';

class SectionQuestionsViewWidget extends StatefulWidget {
  const SectionQuestionsViewWidget({required this.quiz, Key? key})
      : super(key: key);
  final Quiz quiz;

  @override
  State<SectionQuestionsViewWidget> createState() =>
      _SectionQuestionsViewWidgetState();
}

class _SectionQuestionsViewWidgetState
    extends State<SectionQuestionsViewWidget> {
  int _currentQuestion = 0;
  int _score = 0;
  String? _selectedAnswer;
  bool _quizFinished = false;
  List<String?> _selectedAnswers = [];
  List<bool> _answeredCorrectly = [];

  @override
  void initState() {
    super.initState();
    _selectedAnswers = List.filled(widget.quiz.questions.length, null);
    _answeredCorrectly = List.filled(widget.quiz.questions.length, false);
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestion < widget.quiz.questions.length && !_quizFinished) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Quiz ${widget.quiz.lessonIndex + 1} '),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  widget.quiz.questions[_currentQuestion].question,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                ...widget.quiz.questions[_currentQuestion].options
                    .map((option) => RadioListTile(
                          title: Text(option),
                          value: option,
                          groupValue: _selectedAnswer,
                          onChanged: (value) {
                            setState(() {
                              _selectedAnswer = value;
                            });
                          },
                        ))
                    .toList(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: _currentQuestion > 0
                              ? Colors.indigo
                              : Colors.indigo.withOpacity(0.5),
                        ),
                        onPressed: _currentQuestion > 0
                            ? () {
                                setState(() {
                                  _currentQuestion--;
                                  _selectedAnswer =
                                      _selectedAnswers[_currentQuestion];
                                });
                              }
                            : null,
                        child: Text('Previous'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.indigo,
                        ),
                        child: Text(
                            _currentQuestion < widget.quiz.questions.length - 1
                                ? 'Next'
                                : 'Finish'),
                        onPressed: () {
                          if (_selectedAnswer != null) {
                            // Store selected answer
                            _selectedAnswers[_currentQuestion] =
                                _selectedAnswer;
                            bool isCorrect = _selectedAnswer ==
                                widget.quiz.questions[_currentQuestion]
                                    .correctAnswer;

                            if (_answeredCorrectly[_currentQuestion] == false &&
                                isCorrect) {
                              _score++;
                            } else if (_answeredCorrectly[_currentQuestion] &&
                                !isCorrect) {
                              _score--;
                            }

                            _answeredCorrectly[_currentQuestion] = isCorrect;

                            setState(() {
                              _selectedAnswer = null;
                              if (_currentQuestion <
                                  widget.quiz.questions.length - 1) {
                                _currentQuestion++;
                              } else {
                                _quizFinished = true;
                                _showQuizFinishedDialog(context);
                              }
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Please select an answer'),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Score: $_score/${widget.quiz.questions.length}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return QuizFinishedViewWidget();
    }
  }

  void _showQuizFinishedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Quiz Finished!'),
          content:
              Text('Your score is $_score/${widget.quiz.questions.length}'),
          actions: [
            ElevatedButton(
              child: Text('Review Answers'),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                _showReviewAnswersDialog(
                    context); // Show the review answers screen
              },
            ),
            ElevatedButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showReviewAnswersDialog(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReviewAnswersView(
          questions: widget.quiz.questions,
          selectedAnswers: _selectedAnswers,
          correctAnswers: widget.quiz.questions
              .map((question) => question.correctAnswer)
              .toList(),
          score: _score,
        ),
      ),
    );
  }
}
