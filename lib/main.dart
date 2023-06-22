import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState((){
     _questionIndex = _questionIndex + 1;

    });
    
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'What is your favourite food?','answers': [
        'pizza','burger','fried chicken','wrap'],
      },
      {
        'questionText': 'whats is your favourite number?','answers': [
          'one','two','three','four'],
      }
      {
        'questionText': 'whats is your favourite animal?','answers': [
          'cat','dog','elephant','lion'],
      }
      
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]['questionText'],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            
          ],
        ),
      ),
    );
  }
}
