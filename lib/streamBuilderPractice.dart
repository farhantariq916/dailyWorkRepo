import 'package:flutter/material.dart';

class StreamBuilderPractice extends StatefulWidget {
  @override
  _StreamBuilderPracticeState createState() {
    return _StreamBuilderPracticeState();


  }

}
class _StreamBuilderPracticeState extends State<StreamBuilderPractice>{
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any title",
      home:Scaffold(
        appBar:AppBar(
          title:Text("Stream Builder"),

        ),
        body:Center(
          child: _buildStreamBuilder(),
        ),
      ),
    );
  }

  _buildStreamBuilder() {
    return StreamBuilder(
      stream: _fakeIncreaseLikes(),
      builder: (context, snapshot){
        if (snapshot.connectionState == ConnectionState.active){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 50,

              ),
              Text("${snapshot.data}",style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ],
          );

        }
        return CircularProgressIndicator();
      }
    );
  }

  Stream<int> _fakeIncreaseLikes() async* {
    while(true){
      await Future.delayed(Duration(seconds: 2));
      yield _count++;
    }

  }

}