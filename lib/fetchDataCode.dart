import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'dart:async';

Future <Album> fetchAlbum() async{
  final response = await http.get('https://reqres.in/api/users/2');
  print(response.statusCode);

  if (response.statusCode==200){

    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Album loading error");
  }
}


class Album{
  Support support;
  Data data;

  Album({this.data,this.support});

  factory Album.fromJson(Map <String,dynamic> json){
    return Album(
      data:Data.fromJson(json['data']),
      support:Support.fromJson(json['support']),
    );
  }
}

class Support{
  String url;
  String text;

  Support({this.url,this.text});

  factory Support.fromJson(Map<String,dynamic> json){
    return Support(
      url:json['url'],
      text:json['text'],
    );


  }

}

class Data{
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Data({this.id,this.email,this.firstName,this.lastName,this.avatar});

  factory Data.fromJson(Map <String,dynamic> json){
    return Data(
      id : json['id'],
      email:json['email'],
      firstName:json['first_name'],
      lastName:json['last_name'],
      avatar:json['avatar'],
    );

  }
}