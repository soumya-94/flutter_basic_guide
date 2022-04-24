import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 6},
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 4},
        {'text': 'green', 'score': 2},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'rabbit', 'score': 6},
        {'text': 'snake', 'score': 10},
        {'text': 'lion', 'score': 4},
        {'text': 'bear', 'score': 2},
      ],
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {'text': 'food1', 'score': 6},
        {'text': 'food2', 'score': 10},
        {'text': 'food3', 'score': 4},
        {'text': 'food4', 'score': 2},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQues(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQues: _answerQues,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore),
    ));
  }
}
