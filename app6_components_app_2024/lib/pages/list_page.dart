import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  List<String> heroes = [
    "Batman",
    "Superman",
    "Flash",
    "Wonder Woman",
    "Aquaman",
    "Batman",
    "Superman",
    "Flash",
    "Wonder Woman",
    "Aquaman",
    "Batman",
    "Superman",
    "Flash",
    "Wonder Woman",
    "Aquaman",
    "Batman",
    "Superman",
    "Flash",
    "Wonder Woman",
    "Aquaman",
  ];

  Map<String, dynamic> teamMap = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://static.wikia.nocookie.net/superman/images/4/4d/Superman_Moderno.png/revision/latest?cb=20150126220714&path-prefix=es",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      },
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://static.wikia.nocookie.net/superman/images/4/4d/Superman_Moderno.png/revision/latest?cb=20150126220714&path-prefix=es",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      },
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "List Page",
        ),
      ),
      /*body: ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (BuildContext contex, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(heroes[index][0]),
            ),
            title: Text(heroes[index]),
          );
        },
      ), */
      body: ListView.builder(
        itemCount: teamMap["members"].length,
        itemBuilder: (BuildContext contex, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(teamMap["members"][index]["image"]),
            ),
            title: Text(),
          );
        },
      ),
    );
  }
}
