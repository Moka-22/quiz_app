import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/presentation/views/widgets/home_view_widget.dart';
import 'package:quiz_app/utils/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Welcome to Quiz App',
        ),
        centerTitle: true,
      ),
      body: const HomeViewWidget(),
    );
  }
}
