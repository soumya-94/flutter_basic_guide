import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultantScore;
  final Function reset;

  Result(this.resultantScore, this.reset);

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: reset,
              child: Text('Restart Quiz'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue),
              ))
        ],
      ),
    );
  }
}
