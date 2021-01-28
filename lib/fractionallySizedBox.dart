import 'package:flutter/material.dart';

class FractionallySizedBoxPractice extends StatefulWidget{
  @override
  _FractionallySizedBoxPracticeState createState() {
    return _FractionallySizedBoxPracticeState();
  }

}

class _FractionallySizedBoxPracticeState extends State<FractionallySizedBoxPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Any title",
      home: Scaffold(
        appBar:AppBar(
          title: Text("Fractionally Sized Box"),
        ),
        body:Column(
          children:<Widget> [
           FractionallySizedBox(
             widthFactor: 0.8,
             child: Container(
               color: Colors.green,
               child: Text("80% of the width", style: TextStyle(fontSize: 30),),
             ),
           ),

            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.8,

                child: Row(

                  children: [
                    VerticalDivider(color: Colors.black,),
                    Text(
                    "80% of the width"
                  ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}