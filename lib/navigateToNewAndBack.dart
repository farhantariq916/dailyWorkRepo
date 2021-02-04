import 'package:flutter/material.dart';

class NavigateScreen extends StatefulWidget{
  @override
  _NavigateScreenState createState() {
    return _NavigateScreenState();
  }

}
class _NavigateScreenState extends State<NavigateScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("First Page"),
       ),
       body: Center(
         child: ElevatedButton(
           child: Text("Open route"),
           onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondRoute()));
           },
         ),
       ),
     ),
   );
  }

}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("Second Page"),
       ),
       body: Center(
         child: ElevatedButton(
           child: Text("Go Back"),
           onPressed: () {
             Navigator.pop(context);
           },
         ),
       ),
     ),
   );
  }

}