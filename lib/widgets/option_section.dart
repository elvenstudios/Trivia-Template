import 'package:flutter/cupertino.dart';
import 'package:trivia_template/models/question.dart';
import 'package:trivia_template/widgets/trivia_option.dart';

class OptionSection extends StatelessWidget {
  OptionSection(this.question, this.answered, this.correct, this.answerQuestion);
  final Question question;
  final bool answered;
  final bool correct;
  final Function answerQuestion;

  List<Widget> _renderOptions() {
    return this
        .question
        .options
        .asMap()
        .entries
        .map((option) =>
            TriviaOption(option.value, option.key, this.answered, this.correct, this.answerQuestion, this.question))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: 400,
          ),
          child: Column(
            children: [
              ..._renderOptions(),
            ],
          ),
        ),
      ],
    );
  }
}
