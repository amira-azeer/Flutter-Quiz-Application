import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final VoidCallback selectHandler; // shorthand for void Function()
  final String answerText;
  AnswerWidget(this.selectHandler, this.answerText); //indicating the variable required is a function

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        child: Text(answerText),
        // onPressed is a function that is executed when button is pressed
        onPressed: selectHandler, //passing a pointer at that function
        //  Only the name of the function is passed! No brackets
      ),
    );
  }

}
