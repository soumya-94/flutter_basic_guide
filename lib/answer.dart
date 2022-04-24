import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selection;
  final String answerText;

  Answer(this.selection, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
        onPressed: selection,
      ),
    );
  }
}
