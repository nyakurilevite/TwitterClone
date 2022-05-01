import 'dart:async';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:learn_flutter_web/utils/tweet_widget.dart';
import 'package:learn_flutter_web/utils/trending_tweets.dart';
import 'package:learn_flutter_web/utils/who_to_follow.dart';


class RightSideBar extends StatefulWidget {
  const RightSideBar({Key? key}) : super(key: key);



  @override
  State<RightSideBar> createState() => _State();
}

class _State extends State<RightSideBar> {
  TextEditingController searchController=TextEditingController();
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  Container(
        width: currentWidth*0.32,
        padding: EdgeInsets.only(right:70),
        child:Stack(
              children: [
                ListView(
                  children: [
                    SizedBox(height:80),
                    Container(
                        margin: EdgeInsets.only(left:10),
                        decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius:BorderRadius.all(
                              Radius.circular(10.0),
                            )
                        ),
                        child:Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width:10),
                                Text('Trends for you',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20
                                )),
                                Spacer(),
                                IconButton(onPressed: ()=>{}, icon: Icon(FeatherIcons.settings))
                              ],
                            ),
                            TrendingTweets(),
                            TrendingTweets(),
                            TrendingTweets(),
                            Container(
                              height:50,
                              child:Row(
                                children: [
                                  TextButton(onPressed: (){}, child:Text('Show more',style: TextStyle(
                                      color: Colors.blue
                                  )))
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    SizedBox(height:30),
                    Container(
                        //padding: EdgeInsets.only(left:10,right:5),
                        decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius:BorderRadius.all(
                              Radius.circular(10.0),
                            )
                        ),
                        child:Column(
                          children: [
                            SizedBox(height:10),
                            Row(
                              children: const [
                                SizedBox(width:10),
                                Text('Who to follow',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20
                                )),
                              ],
                            ),
                            SizedBox(height: 20),
                            WhoToFollow(),
                            WhoToFollow(),
                            WhoToFollow(),
                            Container(
                              height:50,
                              child:Row(
                                children: [
                                  TextButton(onPressed: (){}, child:Text('Show more',style: TextStyle(
                                      color: Colors.blue
                                  )))
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height:20),
                    Container(
                        child:Column(
                          children: [
                            Row(
                                children:[
                                  TextButton(onPressed: (){}, child:Text('Terms of Service',style: TextStyle(
                                      color: Colors.black,
                                      fontSize:12
                                  ))),
                                  SizedBox(width:5),
                                  TextButton(onPressed: (){}, child:Text('Privacy Policy',style: TextStyle(
                                      color: Colors.black,
                                      fontSize:12
                                  ))),
                                  SizedBox(width:5),
                                  TextButton(onPressed: (){}, child:Text('Cookie Policy',style: TextStyle(
                                      color: Colors.black,
                                      fontSize:12
                                  )))
                                ]
                            ),
                            Row(
                                children:[
                                  TextButton(onPressed: (){}, child:Text('Accessibility',style: TextStyle(
                                      color: Colors.black,
                                      fontSize:12
                                  ))),
                                  SizedBox(width:5),
                                  TextButton(onPressed: (){}, child:Text('Ads info',style: TextStyle(
                                      color: Colors.black,
                                      fontSize:12
                                  ))),
                                  SizedBox(width:5),
                                  TextButton(onPressed: (){}, child:Row(
                                        children: [
                                          Text('More',style: TextStyle(
                                              color: Colors.black,
                                              fontSize:12
                                          )),
                                          Icon(FeatherIcons.moreHorizontal,color:Colors.black,)
                                        ],
                                    ))
                                ]
                            ),
                            SizedBox(height:10),
                            Row(
                                children:[
                                  SizedBox(width:5),
                                  Text('© 2022 Twitter, Inc.',style: TextStyle(
                                      color: Colors.black,
                                      fontSize:12
                                  )),
                                ]
                            )
                          ],
                        )
                    ),
                    SizedBox(height:50),
                  ],
                ),
                Container(
                  height: 80.0,
                  width:350,
                  color: Color.fromRGBO(250, 250, 250,1),
                  child: TextField(
                    cursorColor: Colors.indigo[600],
                    controller: searchController,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding:
                          EdgeInsets.only(left: 10.0, bottom: 02.0),
                          child: IconButton(icon:const Icon(FeatherIcons.search),
                            onPressed: ()=>{
                            },
                          ),
                        ),
                        filled: true,
                        fillColor: Color(0xFFEEEEEE),
                        contentPadding:
                        EdgeInsets.only(left: 25.0, top: 30.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 15.0),
                        hintText: 'Search Twitter'),
                    style:
                    TextStyle(fontSize: 16.0, color: Colors.black87),
                  ),
                ),
              ]));
  }
}
