import 'package:flutter/material.dart';

class PassArgumentsToRoute extends StatefulWidget{
  @override
  _PassArgumentsToRouteState createState() {
    return _PassArgumentsToRouteState();
  }

}
class _PassArgumentsToRouteState extends State<PassArgumentsToRoute>{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute: '/first',
     onGenerateRoute: RouteGenerator.generateRoute,

   );
  }

}

class FirstPage extends StatelessWidget{
  final String data1;
  FirstPage({Key key, @required this.data1}):super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("First Page"),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         mainAxisSize: MainAxisSize.min,
         children: [
           Text("First Page$data1", style: TextStyle(fontSize: 30),),
           ElevatedButton(
               onPressed: () {
                 Navigator.pushNamed(context, '/second',arguments: "Lello there from the first page");
                 },
               child: Text("Go to Second"))
         ],
       ),
     ),
   );
  }
}
class SecondPage extends StatelessWidget{
  final String data;
  SecondPage({Key key,@required this.data,}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Second Page", style: TextStyle(fontSize: 30),),
            Text(
              data, style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }


}

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case '/first':
        return MaterialPageRoute(builder: (_)=>FirstPage(data1:"any data"));
      case '/second':
        if(args is String){
          return MaterialPageRoute(builder: (_)=> SecondPage(data: args));
        }

        return ErrorRoute();

      default:
        return ErrorRoute();
    }
  }
}

 Route<dynamic> ErrorRoute() {
  return MaterialPageRoute(
    builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
        body: Center(
          child: Text("Error!"),
        ),
      );
    }
  );

}