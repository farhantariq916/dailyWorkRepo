import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<Album> fetchAlbum() async{
  final response = await http.get('https://reqres.in/api/users/2');
  print(response.body);

  if (response.statusCode==200){
    return Album.fromJson(jsonDecode(response.body));
  } else{
    throw Exception("Album loading failed");
  }
}

class Album {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  String avatarUrl;

  Album({this.id,this.email,this.firstName,this.lastName,this.avatarUrl});
  factory Album.fromJson(Map<String,dynamic> json){
    return Album(
      id: json['id'],
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatarUrl: json['avatar'],
    );
  }
}

class FetchDataPractice1 extends StatefulWidget{
  @override
  _FetchDataPractice1State createState() {
    return _FetchDataPractice1State();
  }

}
class _FetchDataPractice1State extends State<FetchDataPractice1>{
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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fetch data again"),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot){
              print(snapshot.connectionState);
              print(snapshot.data);
              if(snapshot.hasData){
                return Text(snapshot.data.firstName);
              } else if(snapshot.hasError){
                return Text("$snapshot.error");
              }

              return CircularProgressIndicator();
            },
          ),

        ),
      ),

    );
  }

}