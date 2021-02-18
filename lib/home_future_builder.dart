import 'package:flutter/material.dart';



class HomeFutureBuilder extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){_getListData();},
      ),
      backgroundColor: Colors.grey[900],
      body: FutureBuilder(
        future: _getListData(hasError: true),
        builder: (buildContext,snapshot){
          if (snapshot.hasError){
            return _getInformationMessage(snapshot.error);
          }
          if(!snapshot.hasData){
            return Center(child: CircularProgressIndicator());
          }

          var listItems = snapshot.data;
          if(listItems.length==0){
            return(_getInformationMessage("No data found for your account"));
          }
          return ListView.builder(itemCount: listItems.length,
              itemBuilder: (buildContext,index)=>_getListItemUi(index,listItems));
        },
      ),
    );
  }


  Future<List<String>> _getListData({bool hasError = false, bool hasData = true}) async{
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