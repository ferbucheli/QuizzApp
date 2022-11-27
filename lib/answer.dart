import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback selectHandler;
  String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.amber),
          foregroundColor: MaterialStatePropertyAll(Colors.black),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
