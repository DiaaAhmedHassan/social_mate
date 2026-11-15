import 'package:social_mate/features/auth/domain/entities/app_user.dart';

class AppUserModel extends AppUser{
  AppUserModel({
    required super.userId,
    required super.username,
    required super.email,
    required super.joinedAt,
    required super.posts,
    required super.friends,
  });

  factory AppUserModel.fromJson(Map<String, dynamic> json){
    return AppUserModel(
      userId: json['userId'],
      username: json['username'],
      email: json['email'],
      joinedAt: json['joinedAt'],
      posts: json['posts'], 
      friends: json['friends']
    );
  }

  Map<String, dynamic> toJson(){
   return{
    "userId": userId,
    "username": username,
    "email": email,
    "joinedAt": joinedAt,
    "posts": posts,
    "friends": friends
    };

  }

}