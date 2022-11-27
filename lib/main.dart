import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIdx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIdx = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    this._totalScore += score;
    setState(() {
      _questionIdx++;
    });

    print(_questionIdx);
  }

  final _questions = [
    {
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 9},
        {'text': 'White', 'score': 3},
        {'text': 'Black', 'score': 1},
      ]
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 9},
        {'text': 'Shark', 'score': 3},
        {'text': 'Snake', 'score': 1},
      ]
    },
    {
      'questionText': 'Whats your favorite Sport?',
      'answers': [
        {'text': 'Football', 'score': 9},
        {'text': 'Baseball', 'score': 3},
        {'text': 'Basketball', 'score': 1},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My first App',
          ),
        ),
        body: _questionIdx < _questions.length
            ? Quiz(
                _answerQuestion,
                _questions,
                _questionIdx,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
