import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText,this.answerQuestion, {super.key});
  final String answerText;
  final void Function() answerQuestion;
  @override
  Widget build(context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        onPressed: () {answerQuestion();},
        child: Text(answerText,textAlign: TextAlign.center,));
  }
}
