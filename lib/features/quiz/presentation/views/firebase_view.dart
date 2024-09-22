import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/question_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/quiz_listview_widget.dart';
import 'package:quiz_app/utils/colors.dart';

import '../models/quiz_model.dart';

class FirebaseView extends StatefulWidget {
  const FirebaseView({super.key});

  @override
  State<FirebaseView> createState() => _FirebaseViewState();
}

class _FirebaseViewState extends State<FirebaseView> {
  final List<Quiz> _quiz = [
    Quiz(
      lessonIndex: 0,
      title: 'Quiz 1: Basics',
      questions: [
        Question(
          question: 'What is Firebase?',
          options: [
            'A database management system',
            'A cloud platform for web and mobile app development',
            'A programming language',
            'An API for handling payments'
          ],
          correctAnswer: 'A cloud platform for web and mobile app development',
        ),
        Question(
          question:
              'Which Firebase service is used for real-time data synchronization?',
          options: [
            'Firebase Firestore',
            'Firebase Cloud Functions',
            'Firebase Realtime Database',
            'Firebase Authentication'
          ],
          correctAnswer: 'Firebase Realtime Database',
        ),
        Question(
            question: 'What is the purpose of Firebase Authentication?',
            options: [
              'To manage users and allow them to sign in,To host web applications,To store files and images,To provide analytics on app performance'
            ],
            correctAnswer: 'To manage users and allow them to sign in')
      ],
    ),
    Quiz(
      lessonIndex: 1,
      title: 'Quiz 2: Intermediate',
      questions: [
        Question(
          question:
              'What is the main difference between Firebase Firestore and Firebase Realtime Database?',
          options: [
            'Firestore supports offline data synchronization, while Realtime Database does not',
            'Realtime Database is NoSQL, but Firestore is SQL-based',
            'Firestore is structured in collections and documents, while Realtime Database uses JSON tree structure',
            'Firestore can only be used for small projects, while Realtime Database is for large-scale apps'
          ],
          correctAnswer:
              'Firestore is structured in collections and documents, while Realtime Database uses JSON tree structure',
        ),
        Question(
          question:
              'Which Firebase service allows you to trigger backend code in response to events like changes in Firebase Database or Firestore?',
          options: [
            'Firebase Cloud Firestore',
            'Firebase Cloud Functions',
            'Firebase Authentication',
            'Firebase Remote Config'
          ],
          correctAnswer: 'Firebase Cloud Functions',
        ),
        Question(
          question:
              'What is Firebase Cloud Messaging (FCM) primarily used for?',
          options: [
            'Authenticating users',
            'Providing real-time analytics for app performance',
            'Storing and querying real-time data in the cloud',
            'Sending push notifications to users across platforms',
          ],
          correctAnswer: 'Sending push notifications to users across platforms',
        ),
      ],
    ),
    Quiz(
      lessonIndex: 2,
      title: 'Quiz 3: Advanced',
      questions: [
        Question(
          question:
              'What is the primary purpose of Firebase Realtime Database?',
          options: [
            'To store and manage large amounts of structured data',
            'To provide authentication and authorization for Firebase projects ',
            'To handle HTTP requests and responses for Firebase Hosting ',
            'To track and analyze user behavior in Firebase apps',
          ],
          correctAnswer: 'To store and manage large amounts of structured data',
        ),
        Question(
          question:
              'Which of the following Firebase services is used for cloud-based, serverless functions?',
          options: [
            'Firebase Realtime Database ',
            'Firebase Cloud Firestore ',
            'Firebase Cloud Functions ',
            'Firebase Cloud Storage',
          ],
          correctAnswer: 'Firebase Cloud Functions ',
        ),
        Question(
          question:
              'What is the main benefit of using Firebase Cloud Firestore over Firebase Realtime Database? ',
          options: [
            'Better support for large-scale data storage ',
            'Improved data querying and filtering capabilities ',
            'Enhanced security features for data access control ',
            'Simplified data synchronization across multiple platforms',
          ],
          correctAnswer: 'Improved data querying and filtering capabilities',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Firebase Quiz'),
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
