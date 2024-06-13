import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color(0xffe63946),
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Text(
            "Hola Mundo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
