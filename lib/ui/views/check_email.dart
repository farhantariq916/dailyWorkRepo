import 'package:flutter/material.dart';
import 'package:jobsnow/ui/common/app_colors.dart';
class CheckEmail extends StatefulWidget{
  @override
  _CheckEmailState createState() => _CheckEmailState();

}
class _CheckEmailState extends State<CheckEmail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text("Check your email", style: TextStyle(
                    fontSize: 24,
                    color: colorGreen,
                    fontWeight: FontWeight.w900,fontFamily: "Avenir"),
                ),

                SizedBox(height: 25,),
                Container(
                  height: 193,
                  width: 259,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/email_icon.png"),
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

              ],
            ),
          ),
        ),
      ),
    );
  }

}