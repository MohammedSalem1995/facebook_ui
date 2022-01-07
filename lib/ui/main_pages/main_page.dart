

import 'package:facebookui/data_bases/users.dart';
import 'package:facebookui/modules/user_module.dart';
import 'package:facebookui/ui/sub_pages/creat_post.dart';
import 'package:facebookui/ui/sub_pages/posts.dart';
import 'package:facebookui/ui/sub_pages/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facebook_mainpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          // These are the slivers that show up in the "outer" scroll view.
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                backgroundColor: Colors.blueAccent,
                actions: [
                  Icon(Icons.search,),
                  SizedBox(width: 15,),
                  Icon(Icons.message_sharp),
                ],
                title: const Text(
                  'faceBook',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // This is the title in the app bar.
                pinned: true,
                expandedHeight: 100.0,
                forceElevated: innerBoxIsScrolled,
                floating: true,
                bottom:  PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Icon(Icons.list,size: 30,),
                    Icon(Icons.add_alert,size: 30,),
                    Icon(Icons.other_houses_rounded,size: 30,),
                    Icon(Icons.ondemand_video,size: 30,),
                    Icon(Icons.people,size: 30,),
                    Icon(Icons.home,size: 30,)
                  ],
                ),
              ),
            ),),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
          children: [
            CreatPost(mainUser),
            Stories(),
            Posts(),

          ],
      ),
        ),
      ),
    );
  }
}