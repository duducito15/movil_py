import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionNumber = 0;

  List<String> questions = [
    "¿El hombre llego a la Luna?",
    "¿El día miércoles tenemos clases de Programación Movil?",
    "¿Ikaro llego al Sol?",
    "¿Goku es el Guerrero mas poderos del Universo?",
  ];

  List<bool> answer = [
    true,
    true,
    false,
    true,
  ];

  List<Widget> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2d42),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "QuizApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = answer[questionNumber];
                  if (correctAnswer == true) {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.greenAccent,
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.redAccent,
                      ),
                    );
                  }
                  questionNumber++;
                  setState(() {});
                },
                child: Text("Verdadero"),
                color: Colors.greenAccent,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  bool correctAnswer = answer[questionNumber];
                  if (correctAnswer == false) {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.greenAccent,
                      ),
                    );
                  } else {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.redAccent,
                      ),
                    );
                  }
                  questionNumber++;

                  setState(() {});
                },
                child: Text("Falso"),
                color: Colors.redAccent,
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
