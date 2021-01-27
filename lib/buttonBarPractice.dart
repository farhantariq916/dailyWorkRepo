import 'package:flutter/material.dart';

class ButtonBarPractice extends StatefulWidget{
  @override
  _ButtonBarPracticeState createState() {
    return _ButtonBarPracticeState();
  }

}

class _ButtonBarPracticeState extends State<ButtonBarPractice>{
  bool isShow=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "any Title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Bar"),
        ),
        body: Center(
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonHeight: 80.0,
            buttonMinWidth: 80.0,
            buttonPadding: EdgeInsets.all(10.0),
            buttonTextTheme: ButtonTextTheme.accent,
            children: [
              RaisedButton(child: Text(isShow == true? "Disabled" :"Click me"  ),
              onPressed: isShow==true ? null: (){
                setState(() {
                  isShow=!isShow;
                });
              },),
              RaisedButton(child: Text(isShow == false? "Disabled":"Click me"),
              onPressed: isShow == false ? null: (){
               setState(() {
                 isShow=!isShow;
               });
              },),

            ],

          ),
        ),
      ),
    );
  }

}