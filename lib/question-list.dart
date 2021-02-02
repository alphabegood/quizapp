class QuestionList {
  List<Map<String, Object>> get questions {
    return [
      {
        'questionText': "What is your favorite color?",
        'answerList': [
          {'text': 'Black', 'score': 4},
          {'text': 'Blue', 'score': 1},
          {'text': 'Orange', 'score': 8},
          {'text': 'Purple', 'score': 6},
          {'text': 'White', 'score': 5},
          {'text': 'Red', 'score': 2},
        ]
      },
      {
        'questionText': "What is your favorite animal?",
        'answerList': [
          {'text': 'Lion', 'score': 3},
          {'text': 'Tiger', 'score': 6},
          {'text': 'Snake', 'score': 7},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Lezard', 'score': 8},
          {'text': 'Zebra', 'score': 1},
        ]
      },
      {
        'questionText': "What is your favorite car manufacturer?",
        'answerList': [
          {'text': 'BMW', 'score': 7},
          {'text': 'Bugatti', 'score': 10},
          {'text': 'Renault', 'score': 2},
          {'text': 'Peugeot', 'score': 6},
          {'text': 'Vauxhall/Opel', 'score': 5},
          {'text': 'Toyota', 'score': 6},
        ]
      },
    ];
  }
}
