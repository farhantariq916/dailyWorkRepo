import 'package:flutter/material.dart';

class NavigateNamedRoutes extends StatefulWidget{
  @override
  _NavigateNamedRoutesState createState() {
    return _NavigateNamedRoutesState();
  }

}
class _NavigateNamedRoutesState extends State<NavigateNamedRoutes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => FirstRoute(),
        '/second':(context) => SecondRoute(),
      },
    );
  }
}

class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First named route"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Open route"),
            onPressed: () {
              Navigator.pushNamed(context,'/second');
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
          title: Text("Second named route"),
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