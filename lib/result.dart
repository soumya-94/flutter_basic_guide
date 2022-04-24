import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultantScore;

  Result(this.resultantScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Completed!",
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
