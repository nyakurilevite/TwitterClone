import 'dart:async';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class WhoToFollow extends StatefulWidget {
  const WhoToFollow({Key? key}) : super(key: key);



  @override
  State<WhoToFollow> createState() => _State();
}

class _State extends State<WhoToFollow> {
  bool isHover=false;
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  InkWell(
    onTap: (){},
    onHover:(val){
          setState(() {
            isHover=val;
          });
        },
    child:Container(
      color: isHover?Colors.white60:Color(0xFFEEEEEE),
      padding: EdgeInsets.only(left:10,right:5,bottom:10),
      child: Row(
        children: [
          const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1483505236786483213/stTMe4ad_400x400.jpg')
          ),
          SizedBox(width:10,),
          Column(
            children: [
              Text('Anders Östlund',style: TextStyle(
                  fontWeight: FontWeight.bold
              )),
              SizedBox(height: 3),
              Text('@andersostlund',style: TextStyle(
                  fontWeight: FontWeight.normal
              )),
            ],
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 0,
            child: MaterialButton(onPressed: ()=>{},child:Center(
              child:Text(
                  'Follow',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              )),
            ),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  //side: BorderSide(color: Colors.red),
                ))
          )

        ],
      )
    )
    );
  }
}
