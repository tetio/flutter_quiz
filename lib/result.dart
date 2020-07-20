import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuizHandler;

  Result(this.score, this.resetQuizHandler);

  String get resultText {
    var res;
    if (score < 8) {
      res = 'You are a nice and innocent person';
    } else if (score < 16) {
      res = 'You are nice person';
    } else {
      res = 'You are a mean person!!';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28),
          ),
          FloatingActionButton(
            onPressed: resetQuizHandler,
            tooltip: 'Reset',
            child: Icon(Icons.arrow_back),
          )
        ],
      ),
    );
  }
}
