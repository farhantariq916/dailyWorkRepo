import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splashscreen/splashscreen.dart';




class SplashScreenPractice extends StatefulWidget{
  @override
  _SplashScreenPracticeState createState() {
    return _SplashScreenPracticeState();
  }

}

class _SplashScreenPracticeState extends State<SplashScreenPractice>{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SplashScreen(
            seconds: 10,
            navigateAfterSeconds: AfterSplash(),
            title: Text('Welcome In SplashScreen'),
            image: Image.asset('assets/splash_logo1.png',fit: BoxFit.cover,),

            backgroundColor: Colors.white,
            styleTextUnderTheLoader: TextStyle(),
            photoSize: 200.0,
            loaderColor: Colors.transparent,
        ),
    );

  }

}

class AfterSplash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
            child: Text("Hello to the future!", style: TextStyle(fontSize: 30),
            ),
          ),

      ),
    );
  }

}

