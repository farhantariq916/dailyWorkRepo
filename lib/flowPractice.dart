import 'package:flutter/material.dart';
class FLowPractice extends StatefulWidget{
  @override
  _FlowPracticeState createState() {
    return _FlowPracticeState();
  }

}

class _FlowPracticeState extends State<FLowPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flow"),
        ),
        body: Flow(
          delegate: _myFlowDelegate(),
          children: [
            _colorBox(Colors.red),  //0
            _colorBox(Colors.blue), //1
            _colorBox(Colors.deepPurple),//2
            _colorBox(Colors.yellowAccent),//3
            _colorBox(Colors.tealAccent),//4
            _colorBox(Colors.redAccent),//5
            _colorBox(Colors.purpleAccent),//6
            _colorBox(Colors.orange),//7
            _colorBox(Colors.blueGrey),//8
            _colorBox(Colors.green),//9
            _colorBox(Colors.black87),//10
            _colorBox(Colors.black54),//11

          ],
        ),
      ),
    );
  }

  _colorBox(Color color) {
    return Container(
      height: 50,
      width: 50,
      color: color,
      margin: EdgeInsets.all(5),
    );
  }

}

class _myFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    for(int i=0; i<context.childCount;i++){
     if(i<6){
       double dx = context.getChildSize(i).width*i;
       context.paintChild(i, transform: Matrix4.translationValues(dx, 0, 0));
     }
     else{
       double dy = context.getChildSize(i).height*(i-6);
       context.paintChild(i, transform: Matrix4.translationValues(0, dy, 0));
     }
    }

  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {

    return true;
  }
  
}