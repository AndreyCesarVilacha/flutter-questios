//Importing the material.dart for using widgets
import 'package:flutter/material.dart';

//The main point of app
main() {
  //Run the app Question
  runApp(const Question());
}

//Creating a stateless Widget(don't change)
class Question extends StatelessWidget {
  //Constructor
  const Question({Key? key}) : super(key: key);

  //overriding the method "build"
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
              Text(questions.elementAt(0)),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Answer 1")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Answer 2")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Answer 3")),
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
