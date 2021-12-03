import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String? text;

  const QuestionText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //the container use all the space available
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        text.toString(),
        style: const TextStyle(
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
