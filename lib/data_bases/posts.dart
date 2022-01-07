
import 'package:facebookui/data_bases/users.dart';
import 'package:facebookui/modules/post_module.dart';

List<Post> post=[
  Post(users[3],
      "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80"
  ,[Like(likeType: LikeType.angry,user:users[0] ),
        Like(likeType: LikeType.angry,user:users[2] ),
        Like(likeType: LikeType.angry,user:users[3] )],
      [Comment(comment: "amam",user:users[0] )],
      "postText",Since(time: 20,timeType: TimeType.seconds)),
  Post(users[2],
      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      [Like(likeType: LikeType.happy,user:users[2] ),
        Like(likeType: LikeType.love,user:users[4] ),
        Like(likeType: LikeType.like,user:users[5] )],
      [Comment(comment: "hh",user:users[1] )],
      "postText",Since(time: 50,timeType: TimeType.minutes)),
  Post(users[5],
      'https://scontent.fgza9-1.fna.fbcdn.net/v/t1.6435-9/184558993_1197386574059709_3203172114113815070_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=zJ05FSlws3oAX8MBNJv&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-NrS32gab_mFZBqGUCluh9-Xpzibh3djpIq8t0cyibzQ&oe=61FA4C52',
      [Like(likeType: LikeType.sad,user:users[0] ),
        Like(likeType: LikeType.sad,user:users[1] ),
        Like(likeType: LikeType.sad,user:users[2] )],
      [Comment(comment: "iiii",user:users[1] )],
      "postText",Since(time: 50,timeType: TimeType.day)),
];