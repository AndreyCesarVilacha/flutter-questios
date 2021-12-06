import 'package:flutter/material.dart';

class QuestionBtn extends StatelessWidget {
  final String? text;
  final void Function() onSelected;

  const QuestionBtn(this.text, this.onSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Taking all available space
      width: double.infinity,
      height: 60,
      //Using margin
      margin: const EdgeInsets.fromLTRB(60, 20, 60, 20),
      child: ElevatedButton(
        onPressed: onSelected,
        child: Text(
          text.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
      ),
    );
  }
}
