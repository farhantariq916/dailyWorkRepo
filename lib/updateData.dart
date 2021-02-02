import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'updateDataCode.dart';

class UpdateData extends StatefulWidget{
  @override
  _UpdateDataState createState() {
    return _UpdateDataState();
  }

}

class _UpdateDataState extends State<UpdateData>{
  Future<Album> futureAlbum;
  final TextEditingController controllerForName = TextEditingController();
  final TextEditingController controllerForJob = TextEditingController();

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
          title:Text("Update Data"),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          child: FutureBuilder <Album>(

            future: futureAlbum,
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Name is:"+snapshot.data.name),
                    Text("Job Title is: "+ snapshot.data.job),
                    TextField(
                      controller: controllerForName,
                      decoration: InputDecoration(hintText: "Enter new name"),
                    ),
                    TextField(
                      controller: controllerForJob,
                      decoration: InputDecoration(hintText:"Enter new job title"),
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        futureAlbum=updateAlbum(controllerForName.text, controllerForJob.text);
                      });
                    },
                        child: Text("Update data")),
                  ],
                );
              }
              return CircularProgressIndicator();
            },

          ),



        ),
      ),
    );
  }

}