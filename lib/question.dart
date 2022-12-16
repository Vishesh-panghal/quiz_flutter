import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // container is just like a box 🧰 & this container is for questions not options..
      width: double.infinity, // it give full width as much as it get 😧
      margin: EdgeInsets.all(
          10), // it gives margin to the container its map is child->padding->border->margin.😮
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
