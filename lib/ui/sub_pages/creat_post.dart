import 'package:facebookui/modules/user_module.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreatPost extends StatelessWidget{
  MainUser user;
  var textEditingController = new TextEditingController(
      text: "");
  CreatPost(this.user);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(height: 80,),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(user.pictureUrl),
            ),
            Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "what do you think" ,
                    fillColor: Colors.white70,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(50)),//OutlineInputBorder(),//BorderSide(BorderRadius.circular(60),),
                  ),
              ),
            ),
          ],
        ),
        Container(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly
            ,children: [
              Card(child: Text("picture",style: TextStyle(color: Colors.black),),
              shape: RoundedRectangleBorder(),),
            Card(child: Text("online veiw"),
              shape: RoundedRectangleBorder(),),
            Card(child: Text("feel"),
              shape: RoundedRectangleBorder(),),
          ],
          ),
        ),

      ],
    );
  }

}