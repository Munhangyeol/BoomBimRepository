import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class Cafe2Screen extends StatefulWidget{
  @override
  _Cafe2ScreenState createState()=>_Cafe2ScreenState();
}
class _Cafe2ScreenState extends State<Cafe2Screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size screenSize=MediaQuery.of(context).size;
    double width=screenSize.width;
    double height=screenSize.height;
    bool isHeart=false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE4E4),
        title: Text('Cafe_02',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'IBM',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

      ),
      body: Container(
        child: Container(
          height:height*0.8,
          color: Colors.white,
          margin: EdgeInsets.fromLTRB(0, height*0.05, 0, 0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(height*0.02, height*0.02,
                    0, 0),
              child:Row(

                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.circular(10),
                  child:Image.asset('assets/images/cafe2.jpg',
                    width: width*0.4,height: width*0.4,fit: BoxFit.fill),
                  ),
                  Container(
                    width: width*0.2,
                  ),

                  Column(
                  children:[
                    Text('Cafe_02',style: TextStyle(
                    fontFamily: 'IBM',fontSize: 20
                  ),

                  ),
                    Text('연남동',style: TextStyle(
                       fontFamily: 'IBM',fontSize: 16,
                      color: Colors.grey,
                    ),
                    ),
                    HeartIconButton(),

        ],
                  ),
                ],
                
              )
              ),
              Container(
                height: height*0.02,
              ),
              Container(
                height: height*0.07,
                  child:
              ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 20,
                  ),
                  Column(
                      children:[
                        Text('Americano',style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'IBM'
                        )),
                        Text('4000',style: TextStyle(
                          color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'IBM'
                        ),)
                      ] ),
                  Container(
                    width: 20,
                  ),
                  Column(
                      children:[
                        Text('latte',style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'IBM'
                        ),),
                        Text('4500',style: TextStyle(
                          color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'IBM'
                        ),)
                      ] ),
                  Container(
                    width: 20,
                  ),
                  Column(
                      children:[
                        Text('cake',style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'IBM'
                        ),
                        ),
                        Text('6000',style: TextStyle(
                          color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'IBM'
                        ),)
                      ] ),
                  Container(
                    width: 20,
                  ),
                  Column(
                      children:[
                        Text('smoothie',style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'IBM'
                        ),),
                        Text('5000',style: TextStyle(
                          color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'IBM'
                        ),)
                      ] ),
                  Container(
                    width: 20,
                  ),
                  Column(
                      children:[
                        Text('Tea',style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'IBM'
                        ),),
                        Text('5000',style: TextStyle(
                          color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'IBM'
                        ),)
                      ] ),
                ],
              )
              ),
              Container( height:0.5,
                width:width,
                color:Colors.grey,),
              Container(
                height: height*0.03,
              ),
              Text('Boom Bim?',style: TextStyle(fontSize: 18,
              fontFamily: 'IBM',color: Colors.black),
              ),
              Container(
                height: height*0.08,
              ),
              Center(
              child:LinearPercentIndicator(

                alignment: MainAxisAlignment.center,
                percent: 0.5,
                lineHeight: 5,
                backgroundColor: Color(0xFFF7F7F7),
                progressColor: Color(0xFFFFE4E4),
                width: width*0.95,
              )
              ),
            Container(
              height: height*0.1,
            ),
              Text('Table',style: TextStyle(fontSize: 18,
                  fontFamily: 'IBM',color: Colors.black),
              ),
              Container(
                height: width*0.05,
              ),
              Container(
                height: height*0.19,
              width: width,
              child:ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  Container(

                    width: width*0.05,
                  ),
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Container(

                    height: width*0.27,
                    width: width*0.27,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                    ),
                  )
                ),
                  Text('  No.1',style: TextStyle(fontSize: 14,
                      fontFamily: 'IBM',color: Colors.black)
                  ),
                 Row(


                   children: [
                     Text('  3min',style: TextStyle(fontSize: 13,
                         fontFamily: 'IBM',color: Colors.grey)
                     ),
                     Icon(Icons.bolt),
                     Icon(Icons.local_fire_department),

                   ],
                 ),



      ]
      ),
                  Container(

                    width: width*0.05,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:Container(

                              height: width*0.27,
                              width: width*0.27,
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F3F3),
                              ),
                            )
                        ),
                        Text('  No.2',style: TextStyle(fontSize: 14,
                            fontFamily: 'IBM',color: Colors.black)
                        ),
                        Row(


                          children: [
                            Text('  1h',style: TextStyle(fontSize: 13,
                                fontFamily: 'IBM',color: Colors.grey)
                            ),


                          ],
                        ),



                      ]
                  ),

                  Container(

                    width: width*0.05,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:Container(

                              height: width*0.27,
                              width: width*0.27,
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F3F3),
                              ),
                            )
                        ),
                        Text('  No.3',style: TextStyle(fontSize: 14,
                            fontFamily: 'IBM',color: Colors.black)
                        ),
                        Row(


                          children: [
                            Text('  34min',style: TextStyle(fontSize: 13,
                                fontFamily: 'IBM',color: Colors.grey)
                            ),
                            Icon(Icons.bolt),
                            Icon(Icons.local_fire_department),

                          ],
                        ),



                      ]
                  ),
                  Container(

                    width: width*0.05,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:Container(

                              height: width*0.27,
                              width: width*0.27,
                              decoration: BoxDecoration(
                                color: Color(0xFFF3F3F3),
                              ),
                            )
                        ),
                        Text('  No.4',style: TextStyle(fontSize: 14,
                            fontFamily: 'IBM',color: Colors.black)
                        ),
                        Row(


                          children: [
                            Text('  28min',style: TextStyle(fontSize: 13,
                                fontFamily: 'IBM',color: Colors.grey)
                            ),
                            Icon(Icons.local_fire_department),

                          ],
                        ),



                      ]
                  ),
                ],
              )

    ),
                ],





          ),

        ),


      ),


    );

  }

}
class HeartIconButton extends StatefulWidget {
  @override
  _HeartIconButtonState createState() => _HeartIconButtonState();
}

class _HeartIconButtonState extends State<HeartIconButton> {
  bool isHeartSelected = false;

  void _toggleHeartColor() {
    setState(() {
      isHeartSelected = !isHeartSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.favorite,
        color: isHeartSelected ? Colors.red : Colors.grey,
      ),
      onPressed: _toggleHeartColor,
    );
  }
}