import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:async';




class MyFacebookLogin extends StatefulWidget {
  @override
  _MyFacebookLoginState createState() {
    return _MyFacebookLoginState();
  }
}

class _MyFacebookLoginState extends State<MyFacebookLogin> {
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  Future<Null> _login() async {
    final FacebookLoginResult result =
    await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        print('''
         Logged in!

         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        break;
      case FacebookLoginStatus.cancelledByUser:
        print('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        print('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Facebook Login"),
          elevation: 20,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Click here to login with facebook"),
              SignInButton(
                Buttons.Facebook,
                onPressed: () {
                  _login();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}