//Importing the material.dart for using widgets
import 'package:flutter/material.dart';
import './question_text.dart';
import './question_btn.dart';

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

  void _answered() {
    //setState redraw your screen with the update
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //List to hava all the questions
    List<Map<String, dynamic>> questions = [
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

    //Creating a list for the widget QuestionBtn
    List<Widget> answers = [];

    //Catching every answers from every questions
    for (String textAnswers in questions[_selectedQuestion].cast()['answers']) {
      //Adding the Widget QuestionBtn with every answer on the list answers
      answers.add(QuestionBtn(textAnswers, _answered));
    }

    //Every widget which will not change need to use the key word "const"
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold it is a widget with some custom properties out of the box
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Container(
          //Align the container in the center of Scaffold
          alignment: Alignment.center,
          child: Column(
            //Align the column on the center of container
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  QuestionText(questions
                      .elementAt(_selectedQuestion)['question']
                      .toString()),
                  //using spread operator
                  ...answers,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
