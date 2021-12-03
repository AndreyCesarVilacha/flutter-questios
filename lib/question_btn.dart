import 'package:flutter/material.dart';

class QuestionBtn extends StatelessWidget {
  final String? text;
  final void Function() onSelected;

  const QuestionBtn(this.text, this.onSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      margin: const EdgeInsets.fromLTRB(30, 5, 30, 10),
      child:
          ElevatedButton(onPressed: onSelected, child: Text(text.toString())),
    );
  }
}
