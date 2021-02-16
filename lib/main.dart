import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'code_with_provider.dart';
import 'code_without_provider.dart';
import 'timer_info.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Provider Practice",
     home: ChangeNotifierProvider(
       create: (context)=> TimerInfo(),
       child: CodeWithProvider(),
     ),
   );
  }

}
