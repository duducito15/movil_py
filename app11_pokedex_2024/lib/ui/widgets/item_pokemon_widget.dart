import 'package:flutter/material.dart';

class ItemPokemonWidget extends StatelessWidget {
  String name;
  String img;
  List<String> type;

  ItemPokemonWidget({
    required this.name,
    required this.img,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    // print(type);

    return Container(
      decoration: BoxDecoration(
        color: Colors.green.shade300,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(
              "assets/images/pokeball.png",
              height: 120,
              color: Colors.white.withOpacity(0.27),
            ),
            bottom: -20,
            right: -20,
          ),
          Positioned(
            child: Image.network(
              img,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Image.asset(
                  "assets/images/whoisthat.png",
                  height: 100,
                );
              },
            ),
            bottom: -10,
            right: -10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Grass",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
