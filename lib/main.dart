import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:trivia_template/screens/question_card.dart';

Future<void> main() async {
  await DotEnv().load('lib/assets/.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.purple,
          primaryVariant: Colors.purpleAccent,
          secondary: Colors.blue,
          secondaryVariant: Colors.blueAccent,
          surface: Colors.white,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
          background: Color.fromRGBO(6, 6, 25, 1),
        ),
      ),
      home: QuestionCard(),
    );
  }
}
