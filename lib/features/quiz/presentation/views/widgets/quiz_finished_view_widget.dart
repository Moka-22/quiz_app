import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/views/quiz_view.dart';
import 'package:quiz_app/utils/colors.dart';

class QuizFinishedViewWidget extends StatelessWidget {
  const QuizFinishedViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false,
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
        body: Center(child: Text('Quiz finished!')));
  }
}
