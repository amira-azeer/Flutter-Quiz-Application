import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  //shortcut is st + enter
  final String questionText; //this value will never change after initialization

  QuestionWidget(this.questionText); //Dart constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //take as much space as much width provided, no less no more!
      margin: EdgeInsets.all(10),
      // Spacing around the container
      child: Text(
        // child is the content => text/image/icon
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign
            .center, //TextAlign is an enum which is a predefined list with values
      ),
    );
  }
}
