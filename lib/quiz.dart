import 'package:flutter/material.dart';
import 'package:quizzy/questions_screen.dart';
import 'package:quizzy/results_screen.dart';

import 'data/questions.dart';
import 'home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  late Widget activeScreen;

  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(selectedAnswers, switchScreen);
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple,
              Colors.deepPurple,
            ]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
