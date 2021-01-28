import 'package:flutter/material.dart';

class IntrinsicHeightPractice extends StatefulWidget{
  @override
  _IntrinsicHeightPracticeState createState() {
    return _IntrinsicHeightPracticeState();
   }

}
class _IntrinsicHeightPracticeState extends State<IntrinsicHeightPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Intrinsic height"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _myIntrinsicHeight(180,Colors.blueAccent),
              _myIntrinsicHeight(150,Colors.greenAccent),
              _myIntrinsicHeight(110,Colors.black),
              _myIntrinsicHeight(160,Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }

  _myIntrinsicHeight(double height, Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IntrinsicHeight(
          child: Container(
            height: height,
            width: 2.0,
            child: Container(
              color: color,
            ),
          ),
        ),
       IntrinsicHeight(
         child: Container(
           height: height,
           width: 20.0,
           child: Container(
             color: color,
           ),
         ),
       ),
        IntrinsicHeight(
          child: Container(
            height: height,
            width: 2.0,
            child: Container(
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}