import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_template/models/game.dart';
import 'package:trivia_template/models/question.dart';
import 'package:trivia_template/widgets/option_section.dart';

class QuestionCard extends StatefulWidget {
  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  final Question question = Game().questions.first;

  bool answered = false;
  bool correct = false;

  void _answerQuestion(String answer) {
    setState(() {
      answered = true;
      correct = question.answer == answer;
      question.correct = correct;
      question.selectedOption = answer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Text(
                      question.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      strutStyle: StrutStyle(
                        fontSize: 22,
                        leading: .5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OptionSection(question, answered, correct, _answerQuestion),
          ],
        ),
      ),
    );
  }
}
