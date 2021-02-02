import 'package:flutter/material.dart';
import './question.dart';
import './answer-button.dart';

class Quiz extends StatelessWidget {
  final questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answerList'] as List<Map>).map((answer) {
          return AnswerButton(
            () => answerQuestion(answer['score']),
            answer["text"],
          );
        }),
      ],
    );
  }
}
