import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TriviaOption extends StatefulWidget {
  TriviaOption(this.text, this.option);
  final String text;
  final int option;

  @override
  _TriviaOptionState createState() => _TriviaOptionState();
}

class _TriviaOptionState extends State<TriviaOption> {
  // converts an index to a letter
  String _getOptionLetter(int option) {
    int choice = option + 1;
    switch (choice) {
      case 1:
        {
          return 'A';
        }
        break;

      case 2:
        {
          return 'B';
        }
        break;

      case 3:
        {
          return 'C';
        }
        break;

      case 4:
        {
          return 'D';
        }
        break;

      default:
        {
          return '?';
        }
        break;
    }
  }

  bool answered = false;
  bool correct = false;

  @override
  Widget build(BuildContext context) {
    Color borderColor = Theme.of(context).colorScheme.secondaryVariant;

    // if the question has been answered
    // change the color accordingly
    if (answered) {
      borderColor = correct ? Colors.greenAccent : Colors.pinkAccent;
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          answered = true;
          correct = Random().nextBool();
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.15),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  _getOptionLetter(widget.option),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // this is just a space widget to make text appear correct
            Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
