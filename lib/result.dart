import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetButton;

  Result(this.totalScore, this.resetButton);

  String get resultText {
    String text;

    if (totalScore < 5) {
      text = 'Poor you!';
    } else if (totalScore < 10) {
      text = 'You can do better!';
    } else if (totalScore < 15) {
      text = 'Well done!';
    } else {
      text = 'You are really awesome!';
    }

    return text + ' Your score is : ' + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            child: Text('Restart the Quiz!'),
            onPressed: resetButton,
          )
        ],
      ),
    );
  }
}
