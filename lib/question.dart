import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(35),
      child: Text(
        this.questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
