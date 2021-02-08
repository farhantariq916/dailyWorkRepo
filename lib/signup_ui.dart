
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupPage extends StatefulWidget{

  @override
  _SignupPageState createState() {
    return _SignupPageState();
  }

}
class _SignupPageState extends State<SignupPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reEnterPasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool _obscureText=true;
  bool _obscureText1 = true;
  Color _iconColor,_iconColor1 = Colors.grey;
  FocusNode _nodeText1 = FocusNode();
  FocusNode _nodeText2 = FocusNode();
  FocusNode _nodeText3 = FocusNode();
  FocusNode _nodeText4 = FocusNode();
  FocusNode _nodeText5 = FocusNode();



  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Sign Up"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                SizedBox(height: 30,),

                SizedBox(height: 50,),
                TextFormField(
                  // controller: emailController,
                  // keyboardType: TextInputType.emailAddress,
                  focusNode: _nodeText1,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(_nodeText2);
                  },

                  autovalidate: true,
                  validator: RequiredValidator(
                    errorText: "Required*"
                  ),
                  autofocus: false,

                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Enter Name",
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ), focusColor: Colors.blueAccent,
                  ),

                ),
                SizedBox(height: 20,),

                TextFormField(
                  // controller: emailController,
                  // keyboardType: TextInputType.emailAddress,
                  focusNode: _nodeText2,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(_nodeText3);
                  },
                  autovalidate: true,
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: "Required*"),
                      EmailValidator(errorText: "Email is not valid")
                    ]
                  ),
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Enter Email",
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ), focusColor: Colors.blueAccent,
                  ),

                ),
                SizedBox(height: 20,),
                TextFormField(
                  // controller: emailController,
                  // keyboardType: TextInputType.emailAddress,
                  focusNode: _nodeText3,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(_nodeText4);
                  },
                  autovalidate: true,
                  validator: MultiValidator(
                    [
                      RequiredValidator(errorText: "Required*"),
                      LengthRangeValidator(min: 11, max: 11, errorText: "Please Enter Phone number of 11 digits"),
                    ]
                  ),
                  autofocus: false,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],


                  decoration: InputDecoration(
                    hintText: "Enter Phone",
                    labelText: "Enter Phone",
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ), focusColor: Colors.blueAccent,
                  ),

                ),
                SizedBox(height: 20,),
                TextFormField(
                  // controller: passwordController,
                  // keyboardType: TextInputType,
                  // initialValue: "Some Password",
                  focusNode: _nodeText4,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(_nodeText5);
                  },


                  autovalidate: true,
                  validator:  MultiValidator(
                [
                RequiredValidator(errorText: "Required*"),
                LengthRangeValidator(min: 8, max: 20, errorText: "Please Enter Password between 8-20 "),
              ]
            ),
                  obscureText: _obscureText,
                  autofocus: false,
                  decoration: InputDecoration(
                    suffix:  IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      color: _iconColor,
                      onPressed: (){
                        _showPassword();
                        setState(() {
                          if(_iconColor==Colors.blue){
                            _iconColor=Colors.grey;
                          }else {
                            _iconColor=Colors.blue;
                          }
                        });

                      },
                    ),

                    hintText: "Enter Password",
                    labelText: "Enter Password",
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ), focusColor: Colors.blueAccent,
                  ),



                ),
                SizedBox(height: 20,),
                TextFormField(
                  // controller: passwordController,
                  // keyboardType: TextInputType,
                  // initialValue: "Some Password",
                  focusNode: _nodeText5,
                  textInputAction: TextInputAction.done,

                  autovalidate: true,
                  validator: MultiValidator(
                      [
                        RequiredValidator(errorText: "Required*"),
                        LengthRangeValidator(min: 8, max: 20, errorText: "Please Enter Password between 8-20"),
                      ]
                  ),
                  obscureText: _obscureText1,
                  autofocus: false,
                  decoration: InputDecoration(
                    suffix:  IconButton(
                      icon: Icon(Icons.remove_red_eye_outlined),
                      color: _iconColor1,
                      onPressed: (){
                        setState(() {
                          _obscureText1=!_obscureText1;
                          if(_iconColor1==Colors.blue){
                            _iconColor1=Colors.grey;
                          }else {
                            _iconColor1=Colors.blue;
                          }
                        });

                      },
                    ),
                    hintText: "Re-Enter Password",
                    labelText: "Re-Enter Password",
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
                      child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 20),),
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10,


                      onPressed: () {},

                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

   _showPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
   }
}