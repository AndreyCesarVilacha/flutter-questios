import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String? text;

  const QuestionText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //the container use all the space available
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 30),
      child: Text(
        text.toString(),
        style: const TextStyle(
          fontSize: 25,
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
