import 'dart:math';

import 'package:quiz/app/screen/quiz/model/question.dart';
import 'package:quiz/app/screen/quiz/repository/quiz_repository.dart';


class QuizController {
  List<Question> _questionBank;

  Random _random = new Random();
  int questionIndex = 0;
  bool _shiftAnswer;
  int _shifttAnswer;
  int quantas = 3;
  int hitNumber = 0;

  int get questionsNumber => _questionBank?.length ?? 0;
  Question get question => _questionBank[questionIndex];

  Future<void> initialize() async {
    questionIndex = 0;
    hitNumber = 0;
    _questionBank = await QuizApi.fetch();
    print('Number of questions: ${_questionBank.length}');
    _questionBank.shuffle();
    _shiftAnswer = _random.nextBool();
    _shifttAnswer = _random.nextInt(quantas);
  }

  void nextQuestion() {
    quantas = 3;
    questionIndex = ++questionIndex % _questionBank.length;
    _shiftAnswer = _random.nextBool();
    _shifttAnswer = _random.nextInt(quantas);
  }

  String getQuestion() {
    return _questionBank[questionIndex].question;
  }

  String getAnswer1() {
    return _shiftAnswer
        ? _questionBank[questionIndex].answer1
        : _questionBank[questionIndex].answer2;
  }

  String getAnswer2() {
    return _shiftAnswer
        ? _questionBank[questionIndex].answer2
        : _questionBank[questionIndex].answer1;
  }

  bool correctAnswer(String answer) {
    var correct = _questionBank[questionIndex].answer1 == answer;
    hitNumber = hitNumber + (correct ? 1 : 0);
    return correct;
  }
}