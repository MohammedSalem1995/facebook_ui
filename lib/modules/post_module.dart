import 'package:facebookui/modules/user_module.dart';
enum TimeType {
  seconds,
  minutes,
  hour,
  day,
  week,
  month,
  year
}
class Since{
  int time=0;
  TimeType timeType=TimeType.seconds;
  Since({this.time=0,this.timeType=TimeType.seconds});
}

class Comment{
  User? user;
  String? comment;
  Comment({this.comment,this.user});
}

enum LikeType {
  like,
  love,
  sad,
  happy,
  angry
}
class Like{
  User? user;
  LikeType? likeType;
  Like({this.likeType,this.user});
}
class Post{
  User user=User("");
  String pictureUrl="";
  String? postText;
  Since since=Since();
  int sharedNumber=0;
  List<User> shared=[];
  List<Like> likes=[];
  List<Comment> comments=[];
  Post(this.user,this.pictureUrl,this.likes,this.comments,this.postText,this.since);
}