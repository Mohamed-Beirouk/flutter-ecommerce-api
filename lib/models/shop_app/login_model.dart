class LoginModel
{
bool? status;
String? message;
String? token;
UserData? data;

LoginModel.fromJason(Map<String,dynamic> json)
{
  status = json['status'];
  message = json['message'];
  token = json['token'];
  data = json['data'] != null ? UserData.fromJason(json['data']): null;
}

}

class UserData
{
  String? username;
  String? phone;
//   UserData({
//     this.id,
//     this.name,
//     this.email,
//     this.phone,
//     this.image,
//     this.points,
//     this.credit,
//     this.token,
// });

  //named constractor
  UserData.fromJason(Map<String,dynamic> json)
  {
     username = json['username'];
     phone = json['phone'];

  }
}
