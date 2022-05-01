import 'dart:async';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:learn_flutter_web/utils/tweet_widget.dart';

class CenterContents extends StatefulWidget {
  const CenterContents({Key? key}) : super(key: key);



  @override
  State<CenterContents> createState() => _CenterContentsState();
}

class _CenterContentsState extends State<CenterContents> {

  List posts=[
    {
      "id": 1,
      "user": {
        "avatar": "https://pbs.twimg.com/profile_images/1329647526807543809/2SGvnHYV_400x400.jpg",
        "name": "Barack Obama",
        "username": "@BarackObama"
      },
      "time": "25m",
      "post_contents": "I just tested positive for COVID. I’ve had a scratchy throat for a couple days, but am feeling fine otherwise. Michelle and I are grateful to be vaccinated and boosted, and she has tested negative. It’s a reminder to get vaccinated if you haven’t already, even as cases go down",
      "post_images": []
    },
    {
      "id": 2,
      "user": {
        "avatar": "https://pbs.twimg.com/profile_images/1098244578472280064/gjkVMelR_400x400.png",
        "name": "The New york times",
        "username": "@nytimes"
      },
      "time": "25m",
      "post_contents": "Ukraine’s energy minister said Sunday that power supply has been restored at the Chernobyl nuclear power plant, which Russian troops have occupied since late February.",
      "post_images": []
    },
    {
      "id": 3,
      "user": {
        "avatar": "https://pbs.twimg.com/profile_images/1329647526807543809/2SGvnHYV_400x400.jpg",
        "name": "Barack Obama",
        "username": "@BarackObama"
      },
      "time": "25m",
      "post_contents": "I just tested positive for COVID. I’ve had a scratchy throat for a couple days, but am feeling fine otherwise. Michelle and I are grateful to be vaccinated and boosted, and she has tested negative. It’s a reminder to get vaccinated if you haven’t already, even as cases go down",
      "post_images": []
    },
    {
      "id": 4,
      "user": {
        "avatar": "https://pbs.twimg.com/profile_images/1098244578472280064/gjkVMelR_400x400.png",
        "name": "The New york times",
        "username": "@nytimes"
      },
      "time": "25m",
      "post_contents": "Ukraine’s energy minister said Sunday that power supply has been restored at the Chernobyl nuclear power plant, which Russian troops have occupied since late February.",
      "post_images": []
    },
    {
      "id": 5,
      "user": {
        "avatar": "https://pbs.twimg.com/profile_images/1329647526807543809/2SGvnHYV_400x400.jpg",
        "name": "Barack Obama",
        "username": "@BarackObama"
      },
      "time": "25m",
      "post_contents": "I just tested positive for COVID. I’ve had a scratchy throat for a couple days, but am feeling fine otherwise. Michelle and I are grateful to be vaccinated and boosted, and she has tested negative. It’s a reminder to get vaccinated if you haven’t already, even as cases go down",
      "post_images": []
    },
    {
      "id": 6,
      "user": {
        "avatar": "https://pbs.twimg.com/profile_images/1098244578472280064/gjkVMelR_400x400.png",
        "name": "The New york times",
        "username": "@nytimes"
      },
      "time": "25m",
      "post_contents": "Ukraine’s energy minister said Sunday that power supply has been restored at the Chernobyl nuclear power plant, which Russian troops have occupied since late February.",
      "post_images": []
    }
  ];

  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  Container(
      width:currentWidth>1167?currentWidth*0.5:currentWidth<=1167 && currentWidth>702?currentWidth*0.7:currentWidth*0.95,
      margin:EdgeInsets.only(left:currentWidth>702?60:0),
      child:Stack(
            children: [
                ListView(
                  children: [
                    SizedBox(height:20),
                    Container(
                      height:240,
                      decoration: const BoxDecoration(
                          border: Border(
                            left: BorderSide(width: 0.4, color: Colors.grey),
                            right: BorderSide(width: 0.4, color: Colors.grey),
                          )
                      ),
                      child:Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width:20,),
                              InkWell(
                                onTap: (){},
                                child:const CircleAvatar(
                                    radius: 24,
                                    backgroundImage: NetworkImage(
                                        'https://pbs.twimg.com/profile_images/1485908626141233154/L2yt14nn_400x400.jpg')
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                  height: 200,
                                  padding: EdgeInsets.only(top:75),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text('What is happening now?',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                      )),
                                      TextButton(onPressed: ()=>{}, child: Row(
                                        children: [
                                          Icon(FeatherIcons.globe,size: 12,),
                                          SizedBox(width: 5,),
                                          Text('Everyone can reply',style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold
                                          ))
                                        ],
                                      )),
                                      Row(
                                        children: [
                                          IconButton(onPressed: ()=>{}, icon:Icon(FeatherIcons.image)),
                                          SizedBox(width: 10,),
                                          InkWell(
                                              onTap: (){},
                                              child: Container(
                                                height: 20,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 0.4
                                                    ),
                                                    borderRadius: BorderRadius.circular(5)
                                                ),
                                                child:Center(
                                                    child:Text('GIF',style:TextStyle(
                                                        fontSize: 10
                                                    ))
                                                ),
                                              )),
                                          SizedBox(width: 10,),
                                          IconButton(onPressed: ()=>{}, icon:Icon(FeatherIcons.barChart2)),
                                          SizedBox(width: 10,),
                                          IconButton(onPressed: ()=>{}, icon:Icon(FeatherIcons.smile)),
                                          SizedBox(width: 10,),
                                          IconButton(onPressed: ()=>{}, icon:Icon(FeatherIcons.calendar)),
                                          SizedBox(width: 10,),
                                          IconButton(onPressed: ()=>{}, icon:Icon(FeatherIcons.mapPin)),
                                          SizedBox(width:currentWidth>702?40:20),
                                          MaterialButton(
                                              textColor: Colors.white,
                                              color: Colors.blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                //side: BorderSide(color: Colors.red),
                                              ),
                                              child:Text('Tweet',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              onPressed: () => {}
                                          )
                                        ],
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child:Container(
                           width:currentWidth*0.5,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(width: 0.4, color: Colors.grey),
                              top: BorderSide(width: 0.4, color: Colors.grey),
                              right: BorderSide(width: 0.4, color: Colors.grey),
                            )
                          ),
                          child:TextButton(
                            child:Text('Show 100 Tweets'),
                            onPressed: (){},
                          )
                      )
                    ),
                    for(var i=0;i<=posts.length-1;i++)
                      TweetWidget(records:posts[i])
                  ],
                ),
              Container(
                height: 90,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250,1),
                    border: Border(
                      left: BorderSide(width: 0.4, color: Colors.grey),
                      right: BorderSide(width: 0.4, color: Colors.grey),
                    )
                ),
                child:Row(children:  [
                        SizedBox(width:20,),
                        Text('Home',style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        )),
                        Spacer(),
                        IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.trendingUp,size:25))
                      ]),
                   )
                ],
              ));
  }
}
