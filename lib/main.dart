import 'package:flutter/material.dart'; //gets the MaterialApp / Scaffold
import 'package:flutter_proj1/result.dart';

import './quiz.dart'; //importing quiz file
import '/result.dart'; //importing result file
//the ./ indicates search for this file in the dart file we are using

void main() {
  runApp(MyApp()); //Runs our flutter application
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// The _ indicates that is it only usable from the main dart file and not anywhere else
// The _ indicates it is a private class, by default classes are public in Dart
class _MyAppState extends State<MyApp> {
  // The <> states this class state belongs to this class
  //name of application (class name) and widget state

  // Maps are key value pairs
  final _questions = [
    //Initialization of a Map (by default is a Hash Map)
    {
      "questionText": "What is your favourite colour?",
      "answers": [
        {"Text": "Black", "Score": 20},
        {"Text": "Red", "Score": 50},
        {"Text": "Green", "Score": 10},
        {"Text": "White", "Score": 20}
      ]
    },
    {
      "questionText": "What is your favourite animal?",
      "answers": [
        {"Text": "Rabbit", "Score": 10},
        {"Text": "Snakes", "Score": 40},
        {"Text": "Spider", "Score": 20},
        {"Text": "Monkey", "Score": 30}
      ]
    },
    {
      "questionText": "Who is your favourite instructors?",
      "answers": [
        {"Text": "Max", "Score": 25},
        {"Text": "Max", "Score": 25},
        {"Text": "Max", "Score": 25},
        {"Text": "Max", "Score": 25}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore += score;

    if (_questionIndex < _questions.length) {
      print("NEXT QUESTION AVAILABLE");
    } else {}
    setState(() {
      //SetState is a method/function
      _questionIndex = _questionIndex + 1;
      // ignore: avoid_print
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //the blue bar
          title: const Text("My First Flutter Application"),
        ),
        body: _questionIndex < _questions.length //start of if statement
            ? Quiz(_questions, _questionIndex,
                _answerQuestions) //start of if statement
            : Result(_totalScore, _resetQuiz), // Starting of the else statement and passing total score to the result file
      ),
    );
  }
}
