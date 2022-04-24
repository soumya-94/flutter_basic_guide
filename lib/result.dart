import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultantScore;

  Result(this.resultantScore);

  String get resultPhrase {
    String text;
    if (resultantScore <= 8)
      text = 'innocent';
    else if (resultantScore <= 12)
      text = 'nice';
    else if (resultantScore <= 16)
      text = 'ok';
    else
      text = 'bad!';

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
