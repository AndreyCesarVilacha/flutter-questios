//Importing the material.dart for using widgets
import 'package:flutter/material.dart';

//The main point of app
main() {
  //Run the app Question
  runApp(Question());
}

//Creating a stateless Widget(don't change)
class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  var selectedQuestion = 0;

  void answered() {
    selectedQuestion++;
    print(selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    //List to hava all the questions
    List<String> questions = [
      'What is your favorite color',
      'What is your favorite animal',
      'What is your favorite pop star',
      'What is your favorite Browser',
    ];

    //Every widget which will not change need to use the key word "const"
    return MaterialApp(
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
              Text(questions.elementAt(selectedQuestion)),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          answered();
                        },
                        child: const Text("Answer 1")),
                    ElevatedButton(
                        onPressed: () {
                          answered();
                        },
                        child: const Text("Answer 2")),
                    ElevatedButton(
                        onPressed: () {
                          answered();
                        },
                        child: const Text("Answer 3")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
