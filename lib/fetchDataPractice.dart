import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future <Album> fetchAlbum() async{
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if(response.statusCode==200){
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load album");
  }

}

class Album {
  final int userID;
  final int id;
  final String title;

  Album({this.userID,this.id,this.title});
  factory Album.fromJson(Map<String,dynamic> json){
    return Album(
      userID: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

}


class FetchDataPractice extends StatefulWidget {
  @override
  _FetchDataPracticeState createState() {
    return _FetchDataPracticeState();

  }

}

class _FetchDataPracticeState extends State<FetchDataPractice>{
  Future<Album> futureAlbum;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fetch Data"),

        ),
        body: Center(
          child: FutureBuilder(
            future: futureAlbum,
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Text(snapshot.data.userID.toString());
              } else if(snapshot.hasError){
                return Text("$snapshot.error");
              }

              CircularProgressIndicator();
            },
          ),

        ),
      ),
    );
  }

}

