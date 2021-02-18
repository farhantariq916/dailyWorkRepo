import 'dart:async';

import 'package:flutter/material.dart';

enum HomeViewState{Busy, DataRetrieved, NoData}

class HomeStreamBuilder extends StatefulWidget {
  @override
  _HomeStreamBuilderState createState() => _HomeStreamBuilderState();
}

class _HomeStreamBuilderState extends State<HomeStreamBuilder> {
  final StreamController<HomeViewState> stateController = StreamController<HomeViewState>();
  List<String> listItems;

  @override
  void initState() {
    _getListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){_getListData();},
      ),
      backgroundColor: Colors.grey[900],
      body: StreamBuilder(
        stream: stateController.stream,
        builder: (buildContext,snapshot){
          if (snapshot.hasError){
            return _getInformationMessage(snapshot.error);
          }
          if(!snapshot.hasData || snapshot.data==HomeViewState.Busy){
            return Center(child: CircularProgressIndicator());
          }


          if(snapshot.data==HomeViewState.NoData){
            return(_getInformationMessage("No data found for your account"));
          }
          return ListView.builder(itemCount: listItems.length,
              itemBuilder: (buildContext,index)=>_getListItemUi(index,listItems));
        },
      ),
    );
  }

  Future<List<String>> _getListData({bool hasError = false, bool hasData = true}) async{
    stateController.add(HomeViewState.Busy);
    await Future.delayed(Duration(seconds:2));

    if (hasError) {
      return Future.error("An error occured while fetching tha data");
    }
    if(!hasData){
      return List<String>();
    }
    return List<String>.generate(10,(index) => '$index title');
  }

  Widget _getListItemUi(int index, List<String>listItems){
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blueAccent,
      ),
      child: Center(
        child: Text(listItems[index],style: TextStyle(color: Colors.white),),
      ),
    );
  }

  Widget _getInformationMessage(String message){
    return Center(child: Text(message,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.redAccent),textAlign: TextAlign.center,),);

  }
}