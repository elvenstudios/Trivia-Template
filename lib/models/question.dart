import 'dart:math';

import 'package:flutter/cupertino.dart';

class Question {
  Question({@required this.title, @required this.answer, @required this.wrongAnswers});
  String title;
  String answer;
  List<String> wrongAnswers;

  // returns all options in a random order
  List<String> get options {
    return _shuffle([answer, ...wrongAnswers]);
  }

  // shuffles the list so the options aren't in the same order every time
  List<String> _shuffle(List<String> items) {
    var random = new Random();

    // Go through all elements.
    for (int i = items.length - 1; i > 0; i--) {
      // Pick a pseudorandom number according to the list length
      int n = random.nextInt(i + 1);

      String temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }

    return items;
  }
}
