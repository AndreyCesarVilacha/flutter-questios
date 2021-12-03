import 'package:flutter/material.dart';
import './question_text.dart';

class Quizz extends StatelessWidget {
  List<Map<String, dynamic>>? questions;
  List<Widget>? widgetsList;
  int? selectedQuestion;

  Quizz(
      {required this.questions,
      required this.widgetsList,
      required this.selectedQuestion,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Align the container in the center of Scaffold
      alignment: Alignment.center,
      child: Column(
        //Align the column on the center of container
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              QuestionText(questions!
                  .elementAt(selectedQuestion!.toInt())['question']
                  .toString()),
              //using spread operator
              ...widgetsList!,
            ],
          )
        ],
      ),
    );
  }
}
