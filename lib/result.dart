import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get getPhrase {
    if (resultScore < 9) {
      return 'Good Job!';
    }
    return 'Bad job';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.yellow,
              ),
            ),
            onPressed: resetQuiz,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
