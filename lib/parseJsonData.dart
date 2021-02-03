import 'package:flutter/material.dart';
import 'parseJsonDataModel.dart';


class ParseJsonData extends StatefulWidget{
  @override
  _ParseJsonDataState createState() {
    return _ParseJsonDataState();
  }

}

class _ParseJsonDataState extends State<ParseJsonData>{
  List<User> _users;
  bool _loading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getUsers().then((users){
      setState(() {
        _users=users;
        _loading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text(_loading? "Loading...":"Parse Json Data"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount:_users==null? 0:_users.length,
            itemBuilder: (context,index){
              print("ok");
              User user = _users[index];
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.email),

              );

          },),

        ),
      ),
    );
  }

}