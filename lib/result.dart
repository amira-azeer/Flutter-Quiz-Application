import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final VoidCallback resetQuiz; //Function pass

  Result(this.resultScore, this.resetQuiz); //Constructor

  String get resultPhrase {
    var resultText = "You did it!";
    if(resultScore<=100 && resultScore>80){
      resultText = "Uh Oh you Nasty.";
    } else if(resultScore<=80 && resultScore>50){
      resultText = "Somewhat Nasty.";
    } else if(resultScore<=50 && resultScore>40){
      resultText = "You are INNOCENT!";
    } else{
      resultText = "Too nice, get outta here!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
          FlatButton(onPressed: resetQuiz, child: Text("Reset Quiz"), textColor: Colors.blue,),
        ],
      ),
    );
  }
}

