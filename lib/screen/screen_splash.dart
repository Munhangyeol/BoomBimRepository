import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/screen/screen_select.dart';
class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState()=>_SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SelectScreen(),
      )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    double width=screenSize.width;
    double height=screenSize.height;

    return Scaffold(








        body:Container(

          width: width*1.3,
decoration: BoxDecoration(
  color:Color(0xFFFFE4E4).withOpacity(0.1),
),
            padding: EdgeInsets.fromLTRB(0, height*0.13, width*0.3, 0),
            child:Column(



                children:[
                 // Image.asset('assets/images/BoomBim.png'),
                 Text('Boom\nBim\n',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IBM'
                    ),
                  ),
                  Text('       이젠 붐빔으로 내 주변\n       붐빔을 쉽게 확인하자!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                        fontFamily: 'IBM'
                    ),


                  ),
                ]
            )

        ),


      );




  }

}