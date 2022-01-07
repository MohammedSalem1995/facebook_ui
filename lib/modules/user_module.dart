class User{
   String firstName="";
   String lastName="";
   String pictureUrl="";
   User( this.firstName,{this.lastName="",this.pictureUrl="https://htmlcolorcodes.com/assets/images/colors/gray-color-solid-background-1920x1080.png"});
}
class MainUser {
   int? messageNum;
   int? notificationNumber;
   int? friendRequestNumber;

  String? firstName;
   String? lastName;
   String pictureUrl='';
   @override
   MainUser(  this.firstName,
       this.lastName,
       this.pictureUrl,
       this.messageNum,
       this.notificationNumber,
       this.friendRequestNumber);

}