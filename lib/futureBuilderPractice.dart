import 'package:flutter/material.dart';

class FutureBuilderPractice extends StatefulWidget{
  @override
  _FutureBuilderPracticeState createState() {
    return _FutureBuilderPracticeState();
  }

}

class _FutureBuilderPracticeState extends State<FutureBuilderPractice>{

  Future<String> getDataFromFuture() async{
    return(Future .delayed(Duration(seconds: 5), () => "String from future"));

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"any title",
      home: Scaffold(
        appBar: AppBar(
          title:Text("Future Builder") ,
        ),
        body: Center(
          child: FutureBuilder(
            future: getDataFromFuture(),
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.data!=null){

                  return Center(child: Text("${snapshot.data}"),);

                }
              }

              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }

}