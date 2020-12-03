import 'package:trivia_template/models/question.dart';

class Game {
  List<Question> questions = [
    Question(
      title: 'Mount Everest, the tallest mountain on Earth, is found in which mountain range?',
      answer: 'The Alps',
      wrongAnswers: [
        'The Himalayas',
        'The Appalachians',
      ],
    ),
  ];
}
