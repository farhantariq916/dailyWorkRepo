import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'dart:async';
import 'fetchDataCode.dart';




class FetchData2 extends StatefulWidget{
  @override
  _FetchData2State createState() {
    return _FetchData2State();
  }

}

class _FetchData2State extends State<FetchData2>{
  Future<Album> futureAlbum;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum=fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text("Fetch Data"),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context,snapshot){

              print(snapshot.connectionState);
              print(snapshot.data);
              print(snapshot.error);

              if(snapshot.hasData){
                return ListTile(
                  title: Text(snapshot.data.data.firstName),
                  subtitle: Text(snapshot.data.data.email),
                  leading: CircleAvatar(
                    child: Image(image: NetworkImage(snapshot.data.data.avatar),),
                  ),
                );
              } else if(snapshot.hasError){
                print("Snapshot error");
                return Text("$snapshot.error");

              }
              return CircularProgressIndicator();
            },
          ),

        ),
      )
    );
  }

}