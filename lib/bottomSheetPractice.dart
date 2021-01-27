import 'package:flutter/material.dart';

class BottomSheetPractice extends StatefulWidget{
  @override
  _BottomSheetPracticeState createState() {

    return _BottomSheetPracticeState();
  }

}

class _BottomSheetPracticeState extends State<BottomSheetPractice>{
  final scaffoldState= GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'anyTitle',
     home: Scaffold(
       key: scaffoldState,
       appBar: AppBar(
         title: Text("Base Line"),
       ),
       body: Center(
         child: RaisedButton(
           child: Text("SHOW BOTTOM SHEET"),
           color: Colors.greenAccent,
           onPressed: (){
             var bottomSheetController = scaffoldState.currentState.showBottomSheet((context) => Container(
               child: Center(
                 child: Text("This is bottom sheet!!"),
               ),

             ),);
             bottomSheetController.closed.then((value) => print("Bottom sheet closed"));

           },
         ),
       ),
     ),
   );
  }

  void _showBottomSheet(BuildContext context) {
    Future <void> future =showModalBottomSheet(
      context: scaffoldState.currentState.context,
      builder: (context) => Container(

        child: Center(
          child: Text("Show Model Bottom Sheet", style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
        ),

      ),
    );
    future.then((value) => print("Bottom sheet closed"));



  }

}
