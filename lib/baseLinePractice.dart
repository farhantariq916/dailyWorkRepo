import 'package:flutter/material.dart';

class BaseLinePractice extends StatefulWidget {
  @override
  _BaseLinePracticeState createState() {
    return _BaseLinePracticeState();
  }
}

class _BaseLinePracticeState extends State<BaseLinePractice>{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "any title",
     home: Scaffold(
       appBar: AppBar(
         title: Text("Base Line"),

       ),
       body: _myBaseLineWidget(),
     ),
   );
  }


  }
Widget _myBaseLineWidget(){
  return Center(
    child: Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.indigo,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),

      ),
      child: Baseline(
        baseline: 10.0,
        baselineType: TextBaseline.alphabetic,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreenAccent,
            ),
            height: 60,
            width: 60,
            child:Icon(Icons.star, color: Colors.black,),
          ),
        ),


      ),
    ),
  );
}


