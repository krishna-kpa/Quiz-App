import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Quiz App",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
                onPressed: () {
                  startQuiz();
                },
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ))
          ]),
    );
  }
}
