//Importing the material.dart for using widgets
import 'package:flutter/material.dart';
//import './question_text.dart';
import './question_btn.dart';
import './gameover.dart';
import './quizz.dart';

/*
for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }
*/

//The main point of app
main() {
  //Run the app Question
  runApp(const Question());
}

//Creating a stateful Widget(manage the class _Question)
class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  //Create a state to manage
  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  //This var will controll wich question will be selected
  var _selectedQuestion = 0;
  //List to hava all the questions
  final List<Map<String, dynamic>> _questions = const [
    {
      'question': 'What is your favorite color?',
      'answers': ['Red', 'Black', 'Green', 'Blue'],
    },
    {
      'question': 'What is your favorite animal?',
      'answers': ['Dog', 'Cat', 'Racoon', 'Bird'],
    },
    {
      'question': 'What is your favorite pop star?',
      'answers': ['Shakira', 'Lady Gaga', 'Beyonce', 'Madonna'],
    },
    {
      'question': 'What is your favorite Browser?',
      'answers': ['Internet Explore', 'Googlo Chrome', 'Firefox', 'Safari'],
    },
    {
      'question': 'What is your favorite dessert/candy?',
      'answers': ['Cake', 'Lollipop', 'Ice cream', 'Safari'],
    },
  ];

  void _answered() {
    if (haveQuestionSelected) {
      //setState redraw your screen with the update
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get haveQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> textAnswers = haveQuestionSelected
        ? _questions[_selectedQuestion].cast()['answers']
        : [];

    //using map
    List<Widget> answersWidgets =
        textAnswers.map((t) => QuestionBtn(t, _answered)).toList();
    /*
    //Creating a list for the widget QuestionBtn
    //List<Widget> answersWidgets = [];
    //Catching every answers from every questions
    for (String textAnswers in textAnswers) {
      //Adding the Widget QuestionBtn with every answer on the list answersWidgets
      answersWidgets.add(QuestionBtn(textAnswers, _answered));
    }
    */

    //Every widget which will not change need to use the key word "const"
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold it is a widget with some custom properties out of the box
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("Questions"),
        ),
        body: haveQuestionSelected
            ? Quizz(
                questions: _questions,
                widgetsList: answersWidgets,
                selectedQuestion: _selectedQuestion)
            : const GameOver(),
      ),
    );
  }
}
