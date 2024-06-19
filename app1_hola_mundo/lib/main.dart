import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 225, 172, 196),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.yellow,
                child: Text("Hola 1"),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(30.0),
                alignment: Alignment.topRight,
              ),
              Container(
                color: Colors.blue,
                child: Text("Hola 1"),
                height: 100.0,
                width: 300.0,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(30.0),
                alignment: Alignment.topRight,
              ),
              Container(
                color: Colors.redAccent,
                child: Text("Hola 3"),
                height: 100.0,
                width: 100.0,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(30.0),
                alignment: Alignment.topRight,
              ),
              Text("Otro elemento"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    ),
  );
}
