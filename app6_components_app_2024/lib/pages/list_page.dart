import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  List<String> heroes = [
    "Batman",
    "Superman",
    "Flash",
    "Wonder Woman",
    "Aquaman",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "List Page",
        ),
      ),
      body: ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (BuildContext contex, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(heroes[index][0]),
            ),
            title: Text(heroes[index]),
          );
        },
      ),
    );
  }
}
