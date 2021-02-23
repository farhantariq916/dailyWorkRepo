import 'package:flutter/material.dart';
import "package:jobsnow/ui/common/app_colors.dart";

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    TextEditingController loginNameController = TextEditingController();
    return Scaffold(
      body:  Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome again!",
                  style: TextStyle(
                      fontSize: 24,
                      color: colorGreen,
                      fontWeight: FontWeight.w900,fontFamily:"Avenir"),
                ),
                Text(
                  "Let's find what you desire.",
                  style:
                  TextStyle(fontWeight: FontWeight.w400, color: colorBlack,fontSize: 16,fontFamily: "Avenir"),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 233,
                  width: 188,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/login.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: loginNameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .5, color: colorBlack),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .5, color: colorBlack),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Name"),
                ),

                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: loginNameController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .5, color: colorBlack),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .5, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Password"),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerRight,

                  child: Text("Forgot password?",style: TextStyle(color: colorGreen,fontSize:16, fontWeight:FontWeight.w400,fontFamily: "Avenir"),),

                ),
                SizedBox(height: 35,),
                Container(
                  width: 325,
                  height: 50,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),

                      child: Text("Login",style: TextStyle(color:colorWhite,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Avenir"),),
                      color:colorGreen,
                      onPressed: (){}),
                ),
                SizedBox(height: 15,),
                Text("or",style: TextStyle(color: colorGrey,fontSize: 16,fontWeight: FontWeight.w400,fontFamily: "Avenir"),),
                SizedBox(height: 15,),
                Container(
                  width: 325,
                  height: 50,
                  child: RaisedButton(
                    color:colorBlue,
                    onPressed: (){},

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),


                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/facebook_icon.png")
                            ),
                          ),


                        ),

                        SizedBox(width: 5,),
                        Text("Facebook",style: TextStyle(color:colorWhite,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Avenir")),
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: 325,
                  height: 50,
                  child: RaisedButton(
                    color:colorRed,
                    onPressed: (){},

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ),


                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/google_icon.png")
                            ),
                          ),


                        ),
                        SizedBox(width: 5,),
                        Text("Google",style: TextStyle(color:colorWhite,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Avenir")),
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  width: 200,
                  height: 21,


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Already have account?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: colorBlack,fontFamily: "Avenir"),),
                      SizedBox(width: 5,),
                      Text("Login",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: colorGreen,fontFamily: "Avenir"),),
                    ],
                  ),

                ),



              ],
            ),
          ),
        ),
      ),
    );
  }

}