import 'package:flutter/material.dart';

class ExpansionPanelPractice extends StatefulWidget{
  @override
  _ExpansionPanelPracticeState createState() {
    return _ExpansionPanelPracticeState();
  }

}

class _ExpansionPanelPracticeState extends State<ExpansionPanelPractice>{
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Title",
      home:Scaffold(
        appBar:AppBar(
          title: Text("Expansion Panel"),

        ),
        body:_expansionPanel(),
      ),
    );
  }

  Widget _expansionPanel() {
    return ListView(
      children:[
        ExpansionPanelList(
          expansionCallback: (index,expanded){
            print("index ${index}");
            setState(() {
              active = !active;
            });

          },
          children: [
            ExpansionPanel(
              headerBuilder: (BuildContext context , bool isExpanded){
                return ListTile(
                  title: Text("Header of item"),

                );
              },
              body: ListTile(
                tileColor: Colors.deepPurple,
                title: Text("title of item"),
                subtitle: Text("subtitle of item"),
                trailing: Icon(Icons.favorite),
                onTap:(){
                  print("icon tile tapped");
                },
              ),
              isExpanded: active,
            ),
          ],
        ),
      ],
    );


  }

}