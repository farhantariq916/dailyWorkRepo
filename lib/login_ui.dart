import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';


class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }

}

class _LoginPageState extends State<LoginPage>{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FocusNode _nodeEmail = FocusNode();
  FocusNode _nodePassword = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("Login Page"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: [



                    SizedBox(height: 30,),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage("https://picsum.photos/200/300"),

                    ),
                    SizedBox(height: 50,),

                    TextFormField(
                      // controller: emailController,
                      // keyboardType: TextInputType.emailAddress,

                      autovalidate: true,
                      // validator: (value) {
                      //   if (value.isEmpty ||
                      //       !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      //           .hasMatch(value)) {
                      //     return 'Enter a valid email!';
                      //   }
                      //   return null;
                      // },
                      focusNode: _nodeEmail,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).requestFocus(_nodePassword);
                      },
                      validator: MultiValidator(
                        [
                          RequiredValidator(errorText: "Required*"),
                          EmailValidator(errorText: "Not a valid email"),

                        ]
                      ),
                      autofocus: false,
                      // initialValue: "abc@gmail.com",
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(

                        hintText: "Email",
                        labelText: "Email",
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),

                        ),focusColor: Colors.blueAccent,
                      ),

                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      // controller: passwordController,
                      focusNode: _nodePassword,
                      textInputAction: TextInputAction.done,

                      autovalidate: true,
                      validator: RequiredValidator(errorText: "Required*"),
                      initialValue: "anyPassword",
                      obscureText: true,
                      autofocus: false,
                      decoration: InputDecoration(
                        // hintText: "Password",
                        labelText: "Password",
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),


                        ), focusColor: Colors.blueAccent,
                      ),

                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ButtonTheme(
                        height: 50,
                        child: RaisedButton(
                          child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 20),),
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 10,


                        onPressed: () {},

                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    FlatButton(onPressed: (){},
                      child: Text("Forgot Password?",style: TextStyle(color: Colors.black54),),
                    )


                  ],



            ),
          ),
        ),
      ),
    );
  }

}