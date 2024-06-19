import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        //backgroundColor: Color.fromARGB(255, 225, 172, 196),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.network(
                  "https://www.gohawaii.com/sites/default/files/styles/double_column_large/public/content-images/Makena%20Beach-Maui.jpg?itok=bMWe-LV",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
