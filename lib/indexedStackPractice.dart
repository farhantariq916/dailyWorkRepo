import 'package:flutter/material.dart';

class IndexedStackPractice extends StatefulWidget{
  @override
  _IndexedStackPracticeState createState() {

    return _IndexedStackPracticeState();
  }

}

class _IndexedStackPracticeState extends State<IndexedStackPractice>{
  final widget_list = [
    Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text("Page 1", style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: Text("Page 2", style: TextStyle(fontSize: 20,color: Colors.black),),
      ),
    ),
    Container(
      color: Colors.pinkAccent,
      child: Center(
        child: Text("Page 3", style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    ),
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any title",
      home: Scaffold(
        appBar:AppBar(
          title: Text("Indexed stack"),
        ),
        body: Column(
          children: [
            Expanded(
              child: IndexedStack(
                index: i,
                children: widget_list,

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    setState(() {
                      if(i>0){
                        i--;
                      }
                      else{
                        i=widget_list.length-1;
                      }
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    setState(() {
                      if(i<widget_list.length-1){
                        i++;
                      }
                      else{
                        i=0;
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}