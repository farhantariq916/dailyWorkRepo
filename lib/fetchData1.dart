import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Future<User> fetchAlbum() async{
  final response = await http.get('https://reqres.in/api/users/2');
  print(response.body);

  if (response.statusCode==200){
    return User.fromJson(jsonDecode(response.body));
  } else{
    throw Exception("Album loading failed");
  }
}

class User {
  Data data;
  Support support;

  User({this.data, this.support});

  User.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    support =
    json['support'] != null ? new Support.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    if (this.support != null) {
      data['support'] = this.support.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Data({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    return data;
  }
}

class Support {
  String url;
  String text;

  Support({this.url, this.text});

  Support.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['text'] = this.text;
    return data;
  }
}

class FetchDataPractice1 extends StatefulWidget{
  @override
  _FetchDataPractice1State createState() {
    return _FetchDataPractice1State();
  }

}
class _FetchDataPractice1State extends State<FetchDataPractice1>{
  Future<User> futureAlbum;
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
          child: FutureBuilder<User>(
            future: futureAlbum,
            builder: (context, snapshot){
              print(snapshot.connectionState);
              print(snapshot.data);
              if(snapshot.hasData){
                return Text(snapshot.data.data.firstName);
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