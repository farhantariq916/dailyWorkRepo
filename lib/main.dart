import 'package:flutter/material.dart';
import 'package:jobsnow/ui/views/check_email.dart';
import 'package:jobsnow/ui/views/reset_password.dart';
import 'package:jobsnow/ui/views/login.dart';
import 'home.dart';
import 'ui/views/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:CheckEmail(),
    );
  }
}
