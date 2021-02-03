import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';




Future<Album> fetchAlbum() async{
  final response = await http.get("https://reqres.in/api/users/2");

  if(response.statusCode==200){
    print("status code ok");
    print(response.body);
    return albumFromJson(response.body);

  }
  else{
    throw Exception("Failed to load album");
  }
}

Future<Album> updateAlbum(String firstName1,String lastName1) async{
  print("ok");
  final http.Response response =await http.put("https://reqres.in/api/users/2",
      headers: <String,String>{'Content-Type':'application/json; charset=UTF-8'},
      body: jsonEncode(<String,String>{
        "firstName":firstName1,
        "lastName" :lastName1,
      }));
      print("ok2");
      print(response.body);
      if(response.statusCode==200){
        print("ok3");
        print(response.body);


        return albumFromJson(response.body);

      }else{
        throw Exception("Failed to update album");

      }


}




Album albumFromJson(String str) => Album.fromJson(json.decode(str));

String albumToJson(Album data) => json.encode(data.toJson());

class Album {
  Album({
    this.data,
    this.support,
  });

  final Data data;
  final Support support;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    data: Data.fromJson(json["data"]),
    support: Support.fromJson(json["support"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "support": support.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  final String url;
  final String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
    url: json["url"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "text": text,
  };
}
