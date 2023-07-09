import 'package:flutter/material.dart';
import 'package:untitled/screen/screen_splash.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    double width=screenSize.width;
    double height=screenSize.height;


    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),


     home:SplashScreen(),

    );
  }
}

