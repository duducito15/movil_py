import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      size: 30.0,
                    ),
                    Text(
                      "Top News",
                      style: TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share,
                    ),
                    Icon(
                      Icons.bookmark,
                    ),
                    Icon(
                      Icons.more_vert,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
