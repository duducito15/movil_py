import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color(0xfff72585),
        body: SafeArea(
          child: Container(
            color: Colors.yellow,
            child: Text("Hola 1"),
            height: 200.0,
            width: 200.0,
            //margin: EdgeInsets.all(30.0),
            //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 40.0),
            margin: EdgeInsets.only(left: 80.0, top: 20.0),
            padding: EdgeInsets.all(30.0),
            alignment: Alignment.topRight,
          ),
        ),
      ),
    ),
  );
}
