import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

void main() => runApp(MyApp()); // To run app in module..📲

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
} // This class is used to make the stateful Widget for this every time this  class will change according to next.

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'qs1': 'What is your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 1},
        {'text': 'Blue', 'score': 7},
        {'text': 'White', 'score': 9},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'qs1': 'What is your favorite animal?',
      'answer': [
        {'text': 'Lion', 'score': 7},
        {'text': 'Cat', 'score': 5},
        {'text': 'Dog', 'score': 1},
        {'text': 'Horse', 'score': 9}
      ]
    },
    {
      'qs1': 'What is your favorite food?',
      'answer': [
        {'text': 'Kheer', 'score': 5},
        {'text': 'Rice', 'score': 9},
        {'text': 'Idli-Dosa', 'score': 7},
        {'text': 'Pizza', 'score': 1}
      ]
    },
    {
      'qs1': 'What is your favorite place to visit?',
      'answer': [
        {'text': 'Taj Mahal', 'score': 7},
        {'text': 'The great Pyramids of Giza', 'score': 5},
        {'text': 'Macchu-Pichu', 'score': 1},
        {'text': 'Burj Khilfa', 'score': 9}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {}
    setState(() {
      // this is responsible for change questions.// it again run build function
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Material package to access many things.🧰
      home: Scaffold(
        // it is to build basic design in flutter 🪡
        appBar: AppBar(
          title: Text('Vishesh📍'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
