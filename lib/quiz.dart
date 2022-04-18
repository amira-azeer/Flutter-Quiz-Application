import 'package:flutter/material.dart';

import './answerWidget.dart';
import './questionWidget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.questions, // @required = these values must be passed
       this.questionIndex,
       this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      //starting from here is the if statement
      //column enables widget ordering from top to bottom
      // row enables widget ordering from left to right
      children: [
        QuestionWidget(
          questions[questionIndex]["questionText"] as String, //Letting Dart know the format is String
        ),
        //becomes a custom widget
        // The ... take a list and pull all the other values inside the list out
        // and add them as individual values to the surrounding list
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return AnswerWidget(()=> answerQuestion(answer["Score"]), answer["Text"] as String);
        }).toList()
      ],
      // the : below represents the end of the if true statement and start of the else false statement
    );
  }
}
