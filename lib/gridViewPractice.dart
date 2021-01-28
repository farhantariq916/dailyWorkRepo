import 'dart:math';

import 'package:flutter/material.dart';

class GridViewPracrice extends StatefulWidget {
  @override
  _GridViewPracticeState createState() {
    return _GridViewPracticeState();
  }
}

class _GridViewPracticeState extends State<GridViewPracrice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid view"),
        ),
        body: Container(
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: <String>[
                "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
                    "https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}",
              ].map(
                (url) {
                  return GridTile(child: Image.network(url, fit: BoxFit.cover));
                },
              ).toList()),
        ),
      ),
    );
  }
}
