import 'package:social_mate/features/auth/domain/entities/app_user.dart';

class AppUserModel extends AppUser{
  AppUserModel({
    required super.userId,
    required super.username,
    required super.email,
    required super.joinedAt,
    super.profileImage,
    super.coverImage,
    super.numOfPosts,
    super.numOfFollowers,
    super.numOfPhotos
  });

  factory AppUserModel.fromJson(Map<String, dynamic> json){
    return AppUserModel(
      userId: json['userId'],
      username: json['username'],
      email: json['email'],
      joinedAt: json['joinedAt'],
      profileImage: json['profileImage'],
      coverImage: json['coverImage'],
      numOfPosts: json['numOfPosts'],
      numOfFollowers: json['numOfFollowers'],
      numOfPhotos: json['numOfPhotos']

    );
  }

  Map<String, dynamic> toJson(){
   return{
    "userId": userId,
    "username": username,
    "email": email,
    "joinedAt": joinedAt,
    "profileImage": profileImage,
    "coverImage": coverImage,
    "numOfposts": numOfPosts,
    "numOfFollowers": numOfFollowers,
    "numOfPhotos": numOfPhotos
    };

  }

}