import 'package:transition/transition.dart';
import 'package:untitled/screen/screen_cafe1.dart';
import 'package:untitled/screen/screen_cafe2.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screen/screen_map.dart';
import 'package:untitled/screen/screen_search.dart';
class GuestScreen extends StatefulWidget{
  @override
  _GuestScreenState createState()=>_GuestScreenState();
}
class _GuestScreenState extends State<GuestScreen>{

  @override
  Widget build(BuildContext context){
    Size screenSize=MediaQuery.of(context).size;
    double width=screenSize.width;
    double height=screenSize.height;
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE4E4),
        title: Text('Guest Mode',
        style: TextStyle(
            fontSize: 20,
            fontFamily: 'IBM',
            fontWeight: FontWeight.bold,
            color: Colors.black,
        ),
        ),
      ),
    body: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, height*0.02, width*0.5, 0),
        child: Text('Guest 123',
        style: TextStyle(fontSize: 30,fontFamily: 'IBMd'),
        ),
      ),
        Container(
          margin: EdgeInsets.fromLTRB(0,0, 0,0 ),

          height: height*0.34,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,

          ),
        child: Column(

          children: [
            Text('최근 인기 카페',
            style: TextStyle(
              fontFamily: 'IBM',
              fontSize: 24,

            ),
            ),
            Container(
              height: height*0.04,
            ),
            Expanded(
              child: ListView(
              scrollDirection: Axis.horizontal,
            children:[
              Column(
              children:[
                Text('Caffe_01',
              style: TextStyle(
                fontFamily: 'IBM',
                fontSize: 17,

              ),
            ),


         ClipRRect(
           borderRadius: BorderRadius.circular(10),
         child:Image.asset('assets/images/hotCaffe.jpg',
          width:width*0.4,height: width*0.4,   fit:BoxFit.fill),
         ),
          ]    ),
              Container(
                width: 3,
              ),
              Column(
                  children:[
                    Text('Caffe_02',
                      style: TextStyle(
                        fontFamily: 'IBM',
                        fontSize: 17,

                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:Image.asset('assets/images/cafe4.jpg',
                          width:width*0.4,height: width*0.4,   fit:BoxFit.fill),
                    ),
                  ]    ),
              Container(
                width: 3,
              ),
              Column(
                  children:[
                    Text('Caffe_03',
                      style: TextStyle(
                        fontFamily: 'IBM',
                        fontSize: 17,

                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child:Image.asset('assets/images/cafe3.jpg',
                          width:width*0.4,height: width*0.4,   fit:BoxFit.fill),
                    ),
                  ]    ),
              Container(
                width: 3,
              ),
              Column(
                  children:[
                    Text('Caffe_04',
                      style: TextStyle(
                        fontFamily: 'IBM',
                        fontSize: 17,

                      ),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child:Image.asset('assets/images/cafe2.jpg',
                          width:width*0.4,height: width*0.4,   fit:BoxFit.fill),
                    ),
                  ]    ),
            ],
            ),
            ),
          ],
        ),
        ),
    Container(
      margin: EdgeInsets.fromLTRB(0,height*0.005, 0,0 ),


    height: height*0.34,
    width: width,
    decoration: BoxDecoration(
    color: Colors.white,
    ),

        child:Column(
        children:[
          Text('Like!',style: TextStyle(fontSize: 28,fontFamily: 'IBM'),
        ),
        Text('찜해두었던 카페',style: TextStyle(fontSize: 15,fontFamily: 'IBM',
        color:Colors.grey),
        ),

        Container(
          height: height*0.18,
        child:ListView(

          scrollDirection: Axis.horizontal,

            children:[

              Container(

                margin: EdgeInsets.fromLTRB(0,height*0.015, 0,0 ),



                child:InkWell(

                onTap: () {
                  Navigator.push(context,
                      Transition(
                          child: Cafe1Screen(),
                      transitionEffect: TransitionEffect.RIGHT_TO_LEFT)


                  );
                  print("버튼 클릭");
                },
                child: AspectRatio(
                  aspectRatio: 1, // 가로와 세로 비율을 1:1로 설정합니다.
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/cafe1.png",

                    fit: BoxFit.cover, // 이미지가 채워지도록 fit 속성을 BoxFit.cover로 변경합니다.
                  ),
                  ),
                ),
              ),




              ),
              Container(
                width:3
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0,height*0.015, 0,0 ),
              child:InkWell(
                onTap: () {
                  Navigator.push(context,
                      Transition(
                          child: Cafe2Screen(),
                          transitionEffect: TransitionEffect.RIGHT_TO_LEFT)


                  );
                  print("버튼 클릭");
                },
                child: AspectRatio(
                  aspectRatio: 1, // 가로와 세로 비율을 1:1로 설정합니다.
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/cafe2.jpg",

                    fit: BoxFit.cover, // 이미지가 채워지도록 fit 속성을 BoxFit.cover로 변경합니다.
                  ),
                  ),
                ),

              ),
              ),
              Container(
                width: 3,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0,height*0.015, 0,0 ),
              child:InkWell(
                onTap: () {
                  print("버튼 클릭");
                },
                child: AspectRatio(
                  aspectRatio: 1, // 가로와 세로 비율을 1:1로 설정합니다.
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/cafe3.jpg",


                    fit: BoxFit.cover, // 이미지가 채워지도록 fit 속성을 BoxFit.cover로 변경합니다.
                  ),
                  ),
                ),
              ),
              ),
              Container(
                  width:3
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0,height*0.015, 0,0 ),
                child:InkWell(
                  onTap: () {
                    print("버튼 클릭");
                  },
                  child: AspectRatio(
                    
                    aspectRatio: 1, // 가로와 세로 비율을 1:1로 설정합니다.
                    child:ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                      "assets/images/hotCaffe.jpg",

                      fit: BoxFit.cover, // 이미지가 채워지도록 fit 속성을 BoxFit.cover로 변경합니다.
                    ),
                  ),
                  ),
                ),
              ),
              Container(
                  width:3
              ),
              Container(

                margin: EdgeInsets.fromLTRB(0,height*0.015, 0,0 ),



                child:InkWell(

                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context)=>Cafe1Screen()
                        )
                    );
                    print("버튼 클릭");
                  },
                  child: AspectRatio(
                    aspectRatio: 1, // 가로와 세로 비율을 1:1로 설정합니다.
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/cafe1.png",

                        fit: BoxFit.cover, // 이미지가 채워지도록 fit 속성을 BoxFit.cover로 변경합니다.
                      ),
                    ),
                  ),
                ),




              ),
            ]
        ),

        ),


],
        ),

    ),
      ]
    ),
    bottomNavigationBar:BottomAppBar(
      child:Container(
        height: height*0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {

              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('My'),
              ));
              print("버튼 클릭");
            },
            child: Icon(Icons.account_circle,
              color: Color(0xFFFFE4E4),
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
            child: Icon(Icons.map),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, Transition(
                    child: SearchScreen(),
                    transitionEffect: TransitionEffect.BOTTOM_TO_TOP));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('검색'),
                ));
                print("버튼 클릭");
              },
              child: Icon(Icons.search,

              ),

          ),



        ],
      )
      ),
    ),
    );
  }

}