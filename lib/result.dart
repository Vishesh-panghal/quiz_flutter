import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = ' All DONE! 👍';
    if (resultScore <= 8) {
      resultText = 'You are awesome 😧';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty 😇';
    } else if (resultScore <= 16) {
      resultText = 'You are normal 🙂';
    } else {
      resultText = 'You are so bad 😑';
    }
    return 'All Done..👍\n' + resultText;
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
              onPressed: resetHandler,
              child: Text(
                'Restart Quiz!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    backgroundColor: Color.fromARGB(255, 230, 240, 237),
                    color: Colors.blue[400],
                    fontFamily: 'OoohBaby',
                    ),
              ))
        ],
      ),
    );
  }
}
