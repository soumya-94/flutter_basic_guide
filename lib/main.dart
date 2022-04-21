import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQues() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
              Text(questions[questionIndex]),
              ElevatedButton(onPressed: answerQues, child: Text('answer 1')),
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
