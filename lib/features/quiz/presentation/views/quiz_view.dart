import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/category_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/dart_view.dart';
import 'package:quiz_app/features/quiz/presentation/views/firebase_view.dart';
import 'package:quiz_app/features/quiz/presentation/views/flutter_view.dart';
import 'package:quiz_app/features/quiz/presentation/views/git_view.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/quiz_gridview_widget.dart';
import 'package:quiz_app/generated/assets.dart';
import 'package:quiz_app/utils/colors.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});
  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  List<CategoryModel> categoryList = [
    CategoryModel(
      title: 'Dart',
      image: Assets.imagesDartlogo,
    ),
    CategoryModel(
      title: 'Flutter',
      image: Assets.imagesFlutter,
    ),
    CategoryModel(
      title: 'Git',
      image: Assets.imagesGitLogo,
    ),
    CategoryModel(
      title: 'Firebase',
      image: Assets.imagesFirebaselogo,
    ),
  ];

  List<Widget> sectionsList = [
    DartView(),
    FlutterView(),
    GitView(),
    FirebaseView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Quiz'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              QuizViewGridView(
                  categoryList: categoryList, sectionsList: sectionsList),
            ],
          ),
        ),
      ),
    );
  }
}
