import 'package:flutter/material.dart';

class AppBarPracice extends StatefulWidget{
  @override
  _AppBarPracticeState  createState() {
   return _AppBarPracticeState();
  }

}
class _AppBarPracticeState extends State<AppBarPracice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          leading:IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => print("menu clicked"),
          ),
          title: Text("Simple app bar"),
          actions: [
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () => print("Chat Clicked"),
            ),
            IconButton(
              icon: Icon(Icons.help),
              onPressed: () => print("Help Clicked"),
            ),
          ],

        ),
        body: Center(

        ),
      ),
    );

  }

}