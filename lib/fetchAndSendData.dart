import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FetchAndSend extends StatefulWidget{
  @override
  _FetchAndSendState createState() {
    return _FetchAndSendState();
  }

}
class _FetchAndSendState extends State<FetchAndSend>{
  final _controller_key = TextEditingController();
  final _controller_data = TextEditingController();
  String text_to_show;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text("Fetch and Send Example"),
       ),
       body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           mainAxisSize: MainAxisSize.min,
           children: [
             TextField(
               controller: _controller_key,
               decoration: InputDecoration(hintText: "Enter key"),
             ),
             TextField(
               controller: _controller_data,
               decoration: InputDecoration(hintText: "Enter data"),
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(
                   padding: EdgeInsets.all(0.0),
                   child: RaisedButton(
                     child: Text("Save Data"),
                     onPressed: (){
                       return saveData(_controller_key.text,_controller_data.text);
                     },
                   ),
                 ),
                 Padding(
                   padding: EdgeInsets.all(0.0),
                   child: RaisedButton(
                     child: Text("Read data"),
                     onPressed: (){
                       return readData(_controller_key.text);
                     },
                   ),
                 ),
               ],
             ),
             SizedBox(height: 30,),
             Text("$text_to_show"),
           ],

         ),
       ),

     ),
   );
  }
  saveData(String key, String value) async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
    Fluttertoast.showToast(msg: "Save Data",toastLength: Toast.LENGTH_SHORT);


  }
  readData(String key1) async{
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      text_to_show=prefs.getString(key1);
    });


  }




}

