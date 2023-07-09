import 'dart:async';
import 'package:transition/transition.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screen/screen_guest.dart';
import 'package:untitled/screen/screen_map.dart';
import 'package:untitled/screen/screen_select.dart';
class SearchScreen extends StatefulWidget{
  @override
  _SearchScreenState createState()=>_SearchScreenState();

}

class _SearchScreenState extends State<SearchScreen>{


  @override
  Widget build(BuildContext context){
    Size screenSize=MediaQuery.of(context).size;
    double width=screenSize.width;
    double height=screenSize.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFFFFE4E4),
        title: Text("Map",
          style: TextStyle(fontSize: 20,fontFamily: 'IBM',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      bottomNavigationBar:BottomAppBar(
        child:Container(
            height: height*0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {

                    Navigator.push(context,
                        Transition(
                            child: GuestScreen(),
                            transitionEffect: TransitionEffect.BOTTOM_TO_TOP)


                    );
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('My'),
                    ));
                    print("버튼 클릭");
                  },
                  child: Icon(
                    Icons.account_circle,

                  ),
                ),
                InkWell(
                  onTap: () {

                    Navigator.push(context,
                        Transition(
                            child: MapScreen(),
                            transitionEffect: TransitionEffect.BOTTOM_TO_TOP)


                    );
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Map'),
                    ));
                    print("버튼 클릭");
                  },
                  child: Icon(
                    Icons.map,
                    ),
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('검색'),
                    ));
                    print("버튼 클릭");
                  },
                  child: Icon(Icons.search,
                    color: Color(0xFFFFE4E4),),
                ),



              ],
            )
        ),
      ),
    );
  }



}