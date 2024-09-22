import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/views/quiz_view.dart';
import 'package:quiz_app/utils/colors.dart';

class HomeViewWidget extends StatefulWidget {
  const HomeViewWidget({super.key});

  @override
  State<HomeViewWidget> createState() => _HomeViewWidgetState();
}

class _HomeViewWidgetState extends State<HomeViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Elevate Your Mind with Every Question',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
            child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            elevation: 5,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.blueAccent, width: 2),
            ),
          ),
          onPressed: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => QuizView()));
          },
          child: const Text(
            'Start Quiz',
            style: const TextStyle(color: Colors.white),
          ),
        )),
      ],
    );
  }
}
