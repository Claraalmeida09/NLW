import 'package:DevQuiz/features/presentation/home_page.dart';
import 'package:DevQuiz/features/presentation/splash.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
