 import 'package:facebookui/data_bases/stories.dart';
import 'package:flutter/cupertino.dart';

class Stories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Stories"),
            Text("show other stories >"),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children:stories.map((x){
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.network(x.pictureUrl,
                    fit: BoxFit.cover,),
                  margin: const EdgeInsets.only(
                      top: 10,left: 10),
                  width: 120,
                  height: 200,
                  clipBehavior: Clip.antiAlias,

                );
              }).toList(),
          ),
        )
      ],
    );
  }


}