import 'package:flutter/material.dart';
import './question.dart';
import './answar.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answarQuestion;

  Quiz(
      {@required this.question,
      @required this.answarQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['question']),
        ...(question[questionIndex]['answars'] as List<Map<String, Object>>)
            .map((answar) {
          return Answar(() => answarQuestion(answar['score']), answar['text']);
        }).toList()
      ],
    );
  }
}
