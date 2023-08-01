import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void startQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 0, 255),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              height: 350,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 64.0),
              child: Text(
                'Learn Flutter the fun way!',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            OutlinedButton(
              onPressed: startQuiz,
              child: const Text(
                'Start quiz',
                style: TextStyle( color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
