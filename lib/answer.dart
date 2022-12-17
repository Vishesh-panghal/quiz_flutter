import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText; // it takes no input and dose't give any output
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 84, 178, 254),
              onPrimary: Colors.white),
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
