import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  final questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['blue', 'black', 'red', 'green'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['rabbit', 'snake', 'elephant', 'lion'],
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': ['food1', 'food2', 'food3', 'food4'],
    },
  ];
  var _questionIndex = 0;

  void _answerQues() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex > questions.length
          ? Column(
              children: <Widget>[
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQues, answer);
                }).toList()
              ],
            )
          : Center(
              child: Text("Completed!"),
            ),
    ));
  }
}
