class AppUser{
  String userId;
  String username;
  String email;
  String? joinedAt;
  String? profileImage;
  String? coverImage;
  int numOfPosts;
  int numOfFollowers;
  int numOfPhotos;


  AppUser({
    required this.userId,
    required this.username,
    required this.email,
     this.joinedAt,
     this.profileImage,
     this.coverImage,
     this.numOfPosts = 0,
     this.numOfFollowers = 0,
     this.numOfPhotos = 0
    
  });
  
}