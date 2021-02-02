import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


Album albumFromJson(String str) => Album.fromJson(json.decode(str));

String albumToJson(Album data) => json.encode(data.toJson());

Future<Album> fetchAlbum() async{
  final response = await http.get("https://reqres.in/api/users");

  if(response.statusCode==200){
    return albumFromJson(response.body);
  }
  else{
    throw Exception("Failed to load album");
  }
}

Future<Album> updateAlbum(String name,String jobTitle) async{
  final response =await http.put("https://reqres.in/api/users",
      headers: <String,String>{'Content-Type':'application/json; charset=UTF-8'},
      body: jsonEncode(<String,String>{
        "name":name,
        "job" :jobTitle,
      }));
      if(response.statusCode==200){
        return albumFromJson(response.body);
      }else{
        throw Exception("Failed to update album");

      }


}



class Album {
  Album({
    this.name,
    this.job,
    this.id,
    this.createdAt,
  });

  String name;
  String job;
  String id;
  DateTime createdAt;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    name: json["name"],
    job: json["job"],
    id: json["id"],
    createdAt: DateTime.parse(json["createdAt"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "job": job,
    "id": id,
    "createdAt": createdAt.toIso8601String(),
  };
}

