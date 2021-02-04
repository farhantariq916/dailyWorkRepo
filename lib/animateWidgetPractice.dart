import 'package:flutter/material.dart';

class AnimateWidget extends StatefulWidget{
  @override
  _AnimateWidgetState createState() {
    return _AnimateWidgetState();
  }

}

class _AnimateWidgetState extends State<AnimateWidget>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }

}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Screen"),
        ),
        body: GestureDetector(
          child: Hero(
            tag: "imageHero",
            child: Image.network("https://picsum.photos/250?image=9"),

          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return DetailScreen();

            }));
          },
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detail Screen"),
        ),
        body: GestureDetector(
          child: Center(
            child: Hero(
              tag:"imageHero2",
              child: Image.network("https://picsum.photos/250?image=9"),

            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}