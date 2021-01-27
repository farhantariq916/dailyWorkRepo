import 'package:flutter/material.dart';
class TextFieldPractice extends StatefulWidget {


  @override
  _TextFieldPracticeState createState() => _TextFieldPracticeState();
}

class _TextFieldPracticeState extends State<TextFieldPractice> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text Filed title",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field appbar"),
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              textCapitalization: TextCapitalization.words,
              textAlign: TextAlign.right,
              style: TextStyle(color: Colors.deepPurpleAccent),
              cursorColor: Colors.black,
              cursorWidth: 8.0,
              cursorRadius: Radius.circular(20.0),
              maxLength: 10,
              maxLines: 1,
              obscureText: true, // for password
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.text_fields),
                hintText: "Enter any text",
                border:OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.teal,
                  ),
                ),

              ),


            ),
          ),

        ),

      ),


    );
  }
}
