import 'dart:async';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class TrendingTweets extends StatefulWidget {
  const TrendingTweets({Key? key}) : super(key: key);



  @override
  State<TrendingTweets> createState() => _State();
}

class _State extends State<TrendingTweets> {
  bool isHover=false;
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  InkWell(
      onTap: ()=>{},
      onHover:(val){
        setState(() {
          isHover=val;
        });
      },
      child:Container(
        padding: EdgeInsets.only(left:10,right:5),
        color: isHover?Colors.white60:Color(0xFFEEEEEE),
        child: Column(
            children:[
              Row(
                children: [
                  Text('Trending in Rwanda'),
                  Spacer(),
                  IconButton(onPressed: ()=>{}, icon: Icon(FeatherIcons.moreHorizontal))
                ],
              ),
              Row(
                children: [
                  Text('Kigali',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  )),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('1.7M',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100
                  )),
                  SizedBox(width:5,),
                  Text('Tweets',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100
                  )),
                ],
              )
            ]
        ),
      ),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
