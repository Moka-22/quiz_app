import 'package:flutter/material.dart';
import 'package:quiz_app/features/splash/presentation/views/widgets/splash_view_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewWidget(),
    );
  }
}
