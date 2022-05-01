import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class TweetWidget extends StatefulWidget {
  final records;
  const TweetWidget({Key? key,required this.records}) : super(key: key);



  @override
  State<TweetWidget> createState() => _State();
}

class _State extends State<TweetWidget> {
  bool isHidden=false;
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  GestureDetector(
        onTap: (){},
        child:Visibility(
          visible:true,
          child:Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey,
                  width:0.4
              ),
            ),
            child:isHidden==false?Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    TextButton(onPressed: ()=>{}, child:Row(
                      children: [
                        Icon(FeatherIcons.messageCircle),
                        SizedBox(width: 5),
                        Text('You might like',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                      ],
                    )),
                    SizedBox(width:5),
                    Text('.'),
                    SizedBox(width:5),
                    TextButton(onPressed: ()=>{}, child: Text('See more',style: TextStyle(fontWeight: FontWeight.bold))),
                    Spacer(),
                    IconButton(onPressed: ()=>{
                         setState(() {
                            if(isHidden==false)
                              {
                                isHidden=true;
                              }
                            else
                              {
                                isHidden=false;
                              }
                        })
                    }, icon: Icon(FeatherIcons.x)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(widget.records['user']['avatar'])
                    ),
                    SizedBox(width: 20),
                    TextButton(onPressed: (){}, child: Text(widget.records['user']['name'],style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ))),
                    TextButton(onPressed: (){}, child: Text(widget.records['user']['username'],style: TextStyle(
                        color: Colors.black
                    ))),
                    Text('.'),
                    SizedBox(width: 5),
                    Text(widget.records['time']),
                    Spacer(),
                    IconButton(onPressed: ()=>{}, icon: Icon(FeatherIcons.moreHorizontal))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 100,),
                    Container(
                      width: currentWidth>702?currentWidth*0.4:currentWidth*0.7,
                      child: SelectableText(widget.records['post_contents']),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                widget.records['post_images'].length>0?Row(
                  children: [
                    SizedBox(width: 100),
                    Container(
                      width: currentWidth>702?currentWidth*0.2:currentWidth*0.3,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://pbs.twimg.com/media/FNosJqxXIAUM5Yt?format=jpg&name=medium'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                    Container(
                      width: currentWidth>702?currentWidth*0.2:currentWidth*0.3,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://pbs.twimg.com/media/FNosKTqXoAMhaO9?format=jpg&name=small'),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                      ),
                    ),
                  ],
                ):Container(),
                Row(
                  children: [
                    SizedBox(width: 100),
                    TextButton(onPressed: (){}, child: Text('Muhoozi Kainerugaba and 4 others',style: TextStyle(
                        color: Colors.black
                    )))
                  ],
                ),
                SizedBox(height:20),
                Row(
                  children: [
                    SizedBox(width: 100),
                    IconButton(onPressed: (){}, icon: Icon(FeatherIcons.messageCircle)),
                    SizedBox(width: 3),
                    Text('41'),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(FeatherIcons.refreshCcw)),
                    SizedBox(width: 3),
                    Text('36'),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(FeatherIcons.heart)),
                    SizedBox(width: 3),
                    Text('485'),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(FeatherIcons.share)),
                  ],
                ),
              ],
            ):Column(
              children: [
                SizedBox(height:10),
                Container(
                  padding: EdgeInsets.only(right:10,left:10),
                  height:40,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(
                        Radius.circular(10)
                    ),
                    color:Colors.grey,
                  ),
                  child:Row(
                      children:[
                        Text('We won’t suggest this Topic anymore.',
                            style: TextStyle(
                                fontSize:16
                            )),
                        Spacer(),
                        TextButton(onPressed: ()=>{
                          setState(() {
                            if(isHidden==false)
                            {
                              isHidden=true;
                            }
                            else
                            {
                              isHidden=false;
                            }
                          })
                        },child:Center(
                          child:Text(
                              'Undo',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black
                          )),
                        ))

                      ]
                  ),
                ),
                SizedBox(height:10),
              ],
            )
          )
        ));
  }
}
