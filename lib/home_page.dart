import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // * RIGHT WAY OF APPLYING OPACITY
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 350,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // * WRONG WAY OF APPLYING OPACITY
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     height: 350,
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 64.0),
            child: DefaultTextStyle(
              style: TextStyle(fontSize: 24, color: Colors.white),
              child: Text('Learn Flutter the fun way!'),
            ),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(
                width: 0.7,
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            onPressed: startQuiz,
            label: const Text(
              'Start quiz',
            ),
          ),
        ],
      ),
    );
  }
}
