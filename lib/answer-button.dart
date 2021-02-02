import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function pressAnswerHandler;
  final String answerText;

  AnswerButton(this.pressAnswerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: RaisedButton(
        child: Text(answerText),
        onPressed: pressAnswerHandler,
        textColor: Colors.white,
        color: Colors.blueAccent,
      ),
    );
  }
}
