import 'dart:async';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);



  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  Container(
        width:100,
        padding:EdgeInsets.only(left:30),
        /*decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54
          )
        ),*/
        child: ListView(
          children: [
            MaterialButton(onPressed: (){},child:Image(image: AssetImage('logo/twitter.png'),width: 70,height: 70)),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.home,size:25)),
                  Positioned(
                    top: 5,
                    left: 30,
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueAccent,
                        child: InkWell(
                          splashColor: Colors.orange,
                          child:  const SizedBox(
                              width: 10,
                              height: 10,
                              ),
                          onTap: () {

                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.search,size:25)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.bell,size:25)),
                  Positioned(
                    top: 0,
                    left: 5,
                    child: ClipOval(
                      child: Material(
                        color: Colors.blueAccent,
                        child: InkWell(
                          splashColor: Colors.orange,
                          child:  const SizedBox(
                            width: 30,
                            height: 15,
                            child:Center(
                                  child:Text('20 +',style: TextStyle(
                                      fontSize: 8,
                                      color: Colors.white
                                  ))
                           ),
                          ),
                          onTap: () {

                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.mail,size:25)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.user,size:25)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(
                        color:Colors.black
                      ),
                      borderRadius: BorderRadius.circular(40)
                    ),
                    child: IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.moreHorizontal,size:25)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border:Border.all(
                            color:Colors.black
                        ),
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: IconButton(onPressed: ()=>{}, icon: const Icon(FeatherIcons.plus,size:25)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 80),
            InkWell(
              onTap: (){},
              child:const CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1485908626141233154/L2yt14nn_400x400.jpg')
              ),
            )

          ],
        ),
      );
      // This trailing comma makes auto-formatting nicer for build methods.
  }
}
