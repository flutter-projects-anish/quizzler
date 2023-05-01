import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'ganesh surname is adhikari',
    'anish surname is gc',
    'krishna\'s surname is chaudahry'
  ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                questions[questionNumber % questions.length],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 1,
              width: 2,
              color: Colors.green,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    questionNumber++;
                  });
                  scoreKeeper.add(const Icon(
                    Icons.check,
                    color: Colors.green,
                  ));
                },
                child: const Text(
                  "True",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 1,
              width: 2,
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    questionNumber++;
                  });
                  scoreKeeper.add(
                    const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                },
                child: const Text(
                  "False",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
