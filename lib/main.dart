import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionIndex = 0;

  void _answerQues() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = ['question 1', 'question 2'];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              ElevatedButton(onPressed: _answerQues, child: Text('answer 1')),
              ElevatedButton(
                  onPressed: () => print('answer 2 chosen'),
                  child: Text('answer 2')),
              ElevatedButton(
                  onPressed: () {
                    print('wehrjir');
                    print('answer 3 chosen');
                  },
                  child: Text('answer 3')),
            ],
          )),
    );
  }
}
