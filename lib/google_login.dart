import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_google_login/google_login.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FlutterGoogleLogin extends StatefulWidget{
  @override
  _FlutterGoogleLoginState createState() {
    return _FlutterGoogleLoginState();
  }

}

class _FlutterGoogleLoginState extends State<FlutterGoogleLogin> {
  bool _isLoggedIn = false;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  Future<Null>loginGoogle() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn=true;
      });
      print("Client IDdddddddd"+_googleSignIn.clientId);

    }
    catch(error){
      print("Error while logging in $error");
    }
  }
  logoutGoogle() {
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn=false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Google Login"),
        ),
        body: Center(
          child: _isLoggedIn? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(_googleSignIn.currentUser.photoUrl, height: 50,width: 50,),
              Text(_googleSignIn.currentUser.displayName),
              Text(_googleSignIn.currentUser.email),
              OutlineButton(child: Text("Click here to logout"),
              onPressed: logoutGoogle,),


            ],
          )
              : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click here to sign in with google"),
              SignInButton(Buttons.Google,onPressed: loginGoogle,),
            ],


          )


        ),
      ),
    );
  }
}


