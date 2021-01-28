import 'package:flutter/material.dart';

class StackPractice extends StatefulWidget{
  @override
  _StackPracticeState createState() {
    return _StackPracticeState();
  }

}

class _StackPracticeState extends State<StackPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Any title",
      home: Scaffold(

        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/pic1.jpg"),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Card(
                color: Colors.transparent,
                elevation: 8.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Temperature Max", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                          Text("30 °C ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Temperature Min", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                          Text("0 °C ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Text("New York",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                  Text("Usa",style: TextStyle(fontStyle:FontStyle.italic,fontSize: 30,color: Colors.white),),
                  Text("15 °C",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80,color: Colors.white),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}