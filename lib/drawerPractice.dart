import 'package:flutter/material.dart';

class DrawerPractice extends StatefulWidget{
  @override
  _DrawerPracticeState createState() {
    return _DrawerPracticeState();
  }

}


class _DrawerPracticeState extends State<DrawerPractice>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text( "Drawer Demo"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text("Drawer Header",style: TextStyle(fontSize: 20),),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),

              Builder(
                builder: (context) =>ListTile(
                  title: Text("Item 1"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )

              ),
              ListTile(
                title: Text("Item 2"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Item 3"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Item 4"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Item 5"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Item 6"),
                onTap: () {},
              ),

            ],

          ),
        ),
        body: Center(
          child: Text("App For Drawer Practice"),
        ),
      ),
    );
  }

}