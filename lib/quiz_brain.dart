import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'ganesh surname is adhikari', a: true),
    Question(q: 'anish surname is gc', a: false),
    Question(q: 'anish surname is ! gc', a: false),
    Question(q: 'anish surname is 2 gc', a: false),
    Question(q: 'anish surname is 3gc', a: false),
    Question(q: 'anish surname is 44gc', a: false),
    Question(q: 'anish surname is 5gc', a: false),
    Question(q: 'anish surname is 6gc', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
