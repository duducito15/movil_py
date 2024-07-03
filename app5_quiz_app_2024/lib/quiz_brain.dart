import 'package:app5_quiz_app_2024/question.dart';

class QuizBrain {
  List<Question> _questions = [
    Question(questionText: "¿El hombre llego a la Luna?", questionAnswer: true),
    Question(
        questionText: "¿El día miércoles tenemos clases de Programación Movil?",
        questionAnswer: true),
    Question(questionText: "¿Ikaro llego al Sol?", questionAnswer: false),
    Question(
        questionText: "¿Goku es el Guerrero mas poderos del Universo?",
        questionAnswer: true),
  ];

  String getQuestionText(int index) {
    return _questions[index].questionText;
  }

  bool getQuestionAnswer(int index) {
    return _questions[index].questionAnswer;
  }
}
