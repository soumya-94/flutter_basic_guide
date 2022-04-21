import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: <Widget>[
              Text('Question text?'),
              ElevatedButton(onPressed: null, child: Text('answer 1')),
              ElevatedButton(onPressed: null, child: Text('answer 2')),
              ElevatedButton(onPressed: null, child: Text('answer 3')),
            ],
          )),
    );
  }
}
