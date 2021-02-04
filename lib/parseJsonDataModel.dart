import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class Services {
  static const String url = "http://jsonplaceholder.typicode.com/users";
  static Future<List<User>> getUsers() async {
    print("get user running");
    try {
      print("try ok");
      final response = await http.get("https://jsonplaceholder.typicode.com/posts");
      print(response.statusCode);
      if (response.statusCode == 200) {
        final List<User> users = userFromJson(response.body) ;
        return users;
      } else {
        print("don't get statuscode");
        return List<User>();

      }
    } catch (e) {
      print("Exception here");
      print(e);
      return List<User>();
    }
  }
}

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
