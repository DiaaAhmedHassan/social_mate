import 'package:social_mate/core/error/result.dart';
import 'package:social_mate/features/auth/domain/entities/app_user.dart';
import 'package:social_mate/features/auth/domain/repos/auth_repo.dart';

class Login{
  final AuthRepo repo;
  Login(this.repo);

  Future<Result<AppUser>> call({required String email, required String password}){
   return repo.loginWithEmailPassword(email: email, password: password);
  }
}