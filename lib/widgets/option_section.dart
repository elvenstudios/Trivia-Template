import 'package:flutter/cupertino.dart';
import 'package:trivia_template/models/question.dart';
import 'package:trivia_template/widgets/trivia_option.dart';

class OptionSection extends StatelessWidget {
  OptionSection(this.question);
  final Question question;

  List<Widget> _renderOptions() {
    return this.question.options.asMap().entries.map((option) => TriviaOption(option.value, option.key)).toList();
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
