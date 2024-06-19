import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 225, 172, 196),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.redAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
