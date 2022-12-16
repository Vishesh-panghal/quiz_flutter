import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
} // This class is used to make the stateful Widget for this every time this  class will change according to next.

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      // this is responsible for change questions.// it again run build function
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
      'What is your favorite food?',
      'What is your favorite country?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vishesh📍'),
        ),
        body: Column(
          children: [
            Questions(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1")),
            ElevatedButton(
                onPressed: () => print("Answer 2 choose"),
                child: Text("Answer 2")),
            ElevatedButton(
                onPressed: () => print("Answer 3 chosen"),
                child: Text("Answer 3")),
            ElevatedButton(
                onPressed: () => print("Answer 4 chosen"),
                child: Text("Answer 4")),
          ],
        ),
      ),
    );
  }
}
