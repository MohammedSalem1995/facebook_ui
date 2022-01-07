import 'package:facebookui/data_bases/posts.dart';
import 'package:facebookui/modules/post_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: post.map((a) {
        return Container(
          margin:EdgeInsets.only(top: 20) ,
          child: Column(
            children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(a.user.pictureUrl),
                ),
                SizedBox(
                  width: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${a.user.firstName} ${a.user.lastName}"),
                    Row(
                      children: [
                        Text("${a.since.time} ${gettime(a.since.timeType)}"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              child: Image.network(
                a.pictureUrl,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${200} likes your post"),
                Text("${20} comments"),
              ],
            ),
            Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.fmd_good),
                    Text("Like"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    Text("comment"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    Text("share"),
                  ],
                ),
              ],
            ),

          ]),
        );
      }).toList(),
    );
  }

 String gettime(TimeType timeType) {
     switch(timeType){
       case TimeType.seconds:
         return "seconds";
       case TimeType.minutes:
         return "minutes";
       case TimeType.hour:
         return "hour";
       case TimeType.day:
         return "day";
       case TimeType.week:
         return "week";
       case TimeType.month:
         return "month";
       case TimeType.year:
         return "year";
     }
  }
}
