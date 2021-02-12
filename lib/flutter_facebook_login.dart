import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'dart:async';
import 'dart:convert';

class FacebookLoginFlutter extends StatefulWidget{
  @override
  _FacebookLoginFlutterState createState() {
    return _FacebookLoginFlutterState();
  }

}
class _FacebookLoginFlutterState extends State<FacebookLoginFlutter>{
  String _message = "Click here to login with facebook";
  static final FacebookLogin facebookSignin = new FacebookLogin();
  Future<Null> _login() async{
    final FacebookLoginResult result = await facebookSignin.logIn(['email']);
    switch(result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        _showMessage('''
        Logged in!
        Token: ${accessToken.token}
        User id: ${accessToken.userId}
        Expires: ${accessToken.expires}
        Permissions: ${accessToken.permissions}
        Declined Permissions: ${accessToken.declinedPermissions}
        '''
        );
        break;
      case FacebookLoginStatus.cancelledByUser:
        _showMessage("Canceled by user");
        break;
      case FacebookLoginStatus.error:
        _showMessage("Something went wrong with the login process.\n " "Here is the error facebook give us: ${result.errorMessage}");
        break;
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Facebook login "),
        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text(_message),
              SignInButton(Buttons.FacebookNew,
                  onPressed: _login)
            ],
          ),
        ),
      ),
    );
  }

  void _showMessage(String s) {
    setState(() {
      _message=s;
    });
  }
  Future<Null> _logout() async{
    await facebookSignin.logOut();
    _showMessage("Logged Out!");
  }

}