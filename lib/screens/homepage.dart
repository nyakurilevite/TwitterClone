import 'dart:async';

import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:learn_flutter_web/utils/left_sidebar.dart';
import 'package:learn_flutter_web/utils/center.dart';
import 'package:learn_flutter_web/utils/right_sidebar.dart';



class HomePageSceen extends StatefulWidget {
  const HomePageSceen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePageSceen> createState() => _HomePageSceenState();
}

class _HomePageSceenState extends State<HomePageSceen> {
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var currentHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
        width:currentWidth,
        padding: EdgeInsets.only(left:currentWidth>702?20:0,right:currentWidth>702?20:0),
        child: Row(
          children: [
            currentWidth>702?Sidebar():Container(),
            CenterContents(),
            SizedBox(width:10),
            currentWidth>1167?RightSideBar():Container()
          ],
        )
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
