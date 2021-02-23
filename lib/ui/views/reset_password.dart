import 'package:flutter/material.dart';
import 'package:jobsnow/ui/common/app_colors.dart';

class ForgotPassword extends StatefulWidget{
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();

}

class _ForgotPasswordState extends State<ForgotPassword>{
  TextEditingController forgotEmailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,)),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                Text("Reset password", style: TextStyle(
                    fontSize: 24,
                    color: colorGreen,
                    fontWeight: FontWeight.w900,fontFamily: "Avenir"),
                ),
                Text(
                  "You are almost there!",
                  style:
                  TextStyle(fontWeight: FontWeight.w400, color: colorBlack,fontSize: 16,fontFamily: "Avenir"),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 193,
                  width: 259,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/forgot_image.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Enter the email associated with your account and we'll send you an email with instructions to reset your password",
                      style:
                      TextStyle(fontWeight: FontWeight.w400, color: colorBlack,fontSize: 14,fontFamily: "Avenir"),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: forgotEmailController,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .5, color: colorBlack),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: .5, color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      labelText: "Email"),
                ),
                SizedBox(height: 150,),
                Container(
                  width: 325,
                  height: 50,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),

                      child: Text("Reset password",style: TextStyle(color:colorWhite,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Avenir"),),
                      color:colorGreen,
                      onPressed: (){}),
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