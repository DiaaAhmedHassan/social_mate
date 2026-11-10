class AppUser{
  String userId;
  String username;
  String email;
  String? joinedAt;
  List posts;
  List<AppUser> friends;

  AppUser({
    required this.userId,
    required this.username,
    required this.email,
     this.joinedAt,
    required this.posts,
    required this.friends
    
  });
  
}