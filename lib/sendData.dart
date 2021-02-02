import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'sendDataCode.dart';

class SendData extends StatefulWidget{
  @override
  _SendDataState createState() {
    return _SendDataState();
  }

}

class _SendDataState extends State<SendData>{
  Future<Album> futureAlbum;
  final TextEditingController controllerOfName = TextEditingController();
  final TextEditingController controllerOfjob = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text("Send data"),
        ),
        body:Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          child: (futureAlbum==null)? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controllerOfName,
                decoration: InputDecoration(hintText: "Enter name"),
              ),
              TextField(
                controller: controllerOfjob,
                decoration: InputDecoration(hintText: "Enter Job title"),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  futureAlbum=createAlbum(controllerOfName.text, controllerOfjob.text);
                });

              },
                  child: Text("Create data"),
              ),

            ],

          ) : FutureBuilder(
            future: futureAlbum,
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Column(
                  children: [
                    Text(snapshot.data.name),
                    Text(snapshot.data.job),
                  ],
                );
              } else if(snapshot.hasError){
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();


            },
          )

        ),
      ),
    );
  }

}