import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 225, 172, 196),
        body: SafeArea(
          child: Row(
            children: [
              Icon(
                Icons.wifi,
                color: Colors.yellow,
                size: 40.0,
              ),
              Icon(
                Icons.lock_clock,
                color: Colors.white,
              ),
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Icon(
                Icons.location_city,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
