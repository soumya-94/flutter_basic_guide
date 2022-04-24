import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQues;
  final int questionIndex;

  Quiz(
      {@required this.answerQues,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          //converted from normal function to anyonymous because Answer constructor takes a function without arguments and our answerQues take an argument
          return Answer(() => answerQues(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
