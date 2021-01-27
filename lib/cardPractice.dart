import 'package:flutter/material.dart';

class CardPractice extends StatefulWidget{
  @override
  _CardPracticeState createState() {
    return _CardPracticeState();
  }


}
class _CardPracticeState extends State<CardPractice> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card"),
        ),
        body: Center(
          child: Container(
            width: 250,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.white,
              elevation: 20.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,

                children: [
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 50.0,
                      child: Icon(
                        Icons.star,
                        size: 100,
                        color: Colors.yellow ,
                      ),

                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("OraxTech ", style: TextStyle(color: Colors.black, fontSize: 30.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0,right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.person,color: Colors.grey,),
                            Text("100k ", style: TextStyle(color: Colors.grey,fontSize: 20),),
                          ],
                    ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ),
        ),
      ),
    );
  }
}