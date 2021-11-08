import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/features/widgets/app_bar_widget.dart';
import 'package:DevQuiz/features/widgets/level_button_widget.dart';
import 'package:DevQuiz/features/widgets/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: _body(),
    );
  }

  _body() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LevelButtonWidget(
                text: 'Fácil',
              ),
              LevelButtonWidget(
                text: 'Médio',
              ),
              LevelButtonWidget(
                text: 'Difícil',
              ),
              LevelButtonWidget(
                text: 'Perito',
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: [QuizCard(), QuizCard()],
          ),
        ),
      ],
    );
  }
}
