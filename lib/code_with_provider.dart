import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_provider_practice/timer_info.dart';
import 'package:provider/provider.dart';

class CodeWithProvider extends StatefulWidget{
  @override
  _CodeWithProviderState createState() {
    return _CodeWithProviderState();
  }


}

class _CodeWithProviderState extends State<CodeWithProvider>{

  
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      var timerInfo = Provider.of<TimerInfo>(context,listen: false);
      timerInfo.updateRemainingTime();

    });

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("=====Widget Build===== ");
    return Scaffold(
        appBar: AppBar(
          title: Text("With Provider"),
        ),
        body: Center(
          child: Consumer<TimerInfo>(
            builder: (context,data,child){
               return  Text(data.getRemainingTime().toString()??"",style: TextStyle(fontSize: 30),);
            },


        ),
      ),

    );
  }

}