import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function answerQuestion;

  Answer(this.text, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        hoverColor: Colors.blue,
        child: Text(text),
        onPressed: answerQuestion,
      ),
    );
  }
}
