import 'package:flutter/material.dart';

class FittedBoxPractice extends StatefulWidget{
  @override
  _FittedBoxPracticeState createState() {
    return _FittedBoxPracticeState();

  }

}

class _FittedBoxPracticeState extends State<FittedBoxPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Any title",
      home:Scaffold(
        appBar:AppBar(
          title: Text("Fitted Box"),
        ),
        body: Container(
          height: 100,
          width: 300,
          padding: EdgeInsets.all(20.0),
          child: FittedBox(

            child: Row(
              children: [
                Container(
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png"),

                ),
                Container(
                  child: Text("This text is not hidden now!", style: TextStyle(fontSize:200 ),),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

}