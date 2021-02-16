import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_practice/timer_info.dart';
import 'package:provider/provider.dart';

class CodeWithoutProvider extends StatefulWidget{
  @override
  _CodeWithoutProviderState createState() {
    return _CodeWithoutProviderState();
  }


}

class _CodeWithoutProviderState extends State<CodeWithoutProvider> {
  int initialValue = 60;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 1), (t) {
      setState(() {
        initialValue--;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("=====Widget Build===== ");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Without Provider"),
          ),
          body: Center(
            child: Text(initialValue?.toString()??"", style: TextStyle(fontSize: 30),),
          ),
        ),

    );
  }
}

