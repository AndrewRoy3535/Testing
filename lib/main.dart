import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final question = const [
    {
      'question': 'What\'s your favorite color',
      'answars': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 5},
        {'text': 'Pink', 'score': 5}
      ],
    },
    {
      'question': 'What\'s your favorite animal',
      'answars': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Dog', 'score': 7},
        {'text': 'Cat', 'score': 8},
        {'text': 'Bull', 'score': 2}
      ],
    },
    {
      'question': 'What\'s your Job',
      'answars': [
        {'text': 'Carpanter', 'score': 8},
        {'text': 'Driver', 'score': 7},
        {'text': 'Teacher', 'score': 3},
        {'text': 'Desinger', 'score': 3}
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answarQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < question.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: questionIndex < question.length
            ? Quiz(
                answarQuestion: answarQuestion,
                questionIndex: questionIndex,
                question: question,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
