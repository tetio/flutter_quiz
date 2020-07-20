import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(SecondApp());

class SecondApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondAppState();
}

class _SecondAppState extends State<SecondApp> {
  var _questionIndex = 0;
  var _score = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      "answers": [
        {'text': 'Black', 'score': 7},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      "answers": [
        {'text': 'Elephant', 'score': 4},
        {'text': 'Cat', 'score': 4},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snake', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favourite meal?',
      "answers": [
        {'text': 'Mac and Cheese', 'score': 3},
        {'text': 'Snails with Rabbit', 'score': 10},
        {'text': 'Sushi', 'score': 3},
        {'text': 'Veg lassagna', 'score': 2}
      ]
    },
  ];

  void reset() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      if (_questionIndex < _questions.length) {
        _score += score;
      }
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerHandler: _answerQuestion)
            : Result(_score, reset),
      ),
    );
  }
}
