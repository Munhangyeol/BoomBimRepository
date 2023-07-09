import 'package:flutter/material.dart';
import 'package:transition/transition.dart';
import 'package:untitled/screen/screen_guest.dart';
class SelectScreen extends StatefulWidget{
  @override
  _SelectScreenState  createState()=>_SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen>{


    // TODO: implement createElement
    @override
    Widget build(BuildContext context) {
      Size screenSize=MediaQuery.of(context).size;
      double width=screenSize.width;
      double height=screenSize.height;
      return Scaffold(

        backgroundColor: Color(0xFFF7F7F7),
        appBar:AppBar(

            backgroundColor:Color(0xFFFFE4E4),
          title: Text("Select Mode",
                style: TextStyle(fontSize: 20,fontFamily: 'IBM',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),


          ),








        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              SizedBox(


                width: width*0.68,
                height: height*0.1,
              //  padding: EdgeInsets.fromLTRB(0, height*0.4, 0, 0),
                child: FilledButton(


                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {

                  },
                  child:
                      Text('Master Mode',
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 24,
                    fontFamily: 'IBM'
                  ),
                  ),


                ),

              ),


              SizedBox(
                width: width*0.68,
                height: height*0.1,
                child: FilledButton(

                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                     Transition(
                         child: GuestScreen(),
                     transitionEffect: TransitionEffect.RIGHT_TO_LEFT),
                    );
                  },
                  child:
                  Text('Guest Mode',
                    style: TextStyle(
                        color:Colors.black,
                        fontSize: 24,
                        fontFamily: 'IBM'
                    ),
                  ),
                ),

              )
            ],

          ),
        )

      );



    }

  }



