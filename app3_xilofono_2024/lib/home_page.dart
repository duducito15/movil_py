import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Xylophone App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Click!!!"),
        ),
      ),
    );
  }
}
