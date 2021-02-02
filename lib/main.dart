import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './question-list.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _addScore(int score) {
    _totalScore += score;
  }

  void _answerQuestion(int score) {
    print('answer question ' + _questionIndex.toString());
    setState(() {
      _addScore(score);
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = QuestionList().questions;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
