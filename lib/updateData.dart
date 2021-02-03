import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'updateDataCode.dart';

class UpdateData extends StatefulWidget {
  @override
  _UpdateDataState createState() {
    return _UpdateDataState();
  }
}

class _UpdateDataState extends State<UpdateData> {
  Future<Album> futureAlbum;
  final TextEditingController controllerForFirstName = TextEditingController();
  final TextEditingController controllerForLastName = TextEditingController();

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
          title: Text("Update Data"),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              print(snapshot.connectionState);

              print(snapshot.data);
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name is:" + snapshot.data.data.firstName),
                      Text("Last Name is: " + snapshot.data.data.lastName),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: controllerForFirstName,
                        decoration:
                            InputDecoration(hintText: "Enter new first name"),
                      ),
                      TextField(
                        controller: controllerForLastName,
                        decoration:
                            InputDecoration(hintText: "Enter new last name"),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              futureAlbum = updateAlbum(
                                  controllerForFirstName.text,
                                  controllerForLastName.text);
                            });
                          },
                          child: Text("Update data")),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
