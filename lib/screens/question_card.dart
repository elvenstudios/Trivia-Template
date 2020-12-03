import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trivia_template/models/question.dart';
import 'package:trivia_template/widgets/option_section.dart';

class QuestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Question question = Question(
      title: 'Mount Everest, the tallest mountain on Earth, is found in which mountain range?',
      answer: 'The Alps',
      wrongAnswers: [
        'The Himalayas',
        'The Appalachians',
      ],
    );

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
            OptionSection(question),
          ],
        ),
      ),
    );
  }
}
