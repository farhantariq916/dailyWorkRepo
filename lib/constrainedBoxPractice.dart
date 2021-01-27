import 'package:flutter/material.dart';

class ConstrainedBoxPractice extends StatefulWidget{
  @override
  _ConstrainedBoxPracticeState createState() {
    return _ConstrainedBoxPracticeState();
    }

}
class _ConstrainedBoxPracticeState extends State<ConstrainedBoxPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Constrained Box"
          ),

        ),
        body:_constrainedBoxExample(),
      ),
    );
  }

  Widget _constrainedBoxExample() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 300,
        maxWidth: 300,
        minHeight: 100,
        minWidth: 100
      ),
      child: Container(
        height: 200.0, // when we give height>maxHeight and height<minHeight it will not work
        width: 200.0, //  when we give width greater than maxWidth and less than minWidth it will not work
        color: Colors.amberAccent,
        child: Center(
          child: Text("Constrained Box here", style: TextStyle(color: Colors.black, fontSize: 20.0),),
        ),
      ),
    );
  }
}



