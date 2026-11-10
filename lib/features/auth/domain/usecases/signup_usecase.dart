import 'package:social_mate/core/error/result.dart';
import 'package:social_mate/features/auth/domain/entities/app_user.dart';
import 'package:social_mate/features/auth/domain/repos/auth_repo.dart';

class Signup {
  final AuthRepo authRepo;
  Signup(this.authRepo);

  Future<Result<AppUser>> call({required String username, required String email, required String password})async{
    return await authRepo.signupWithEmailPassword(email: email, password: password, username: username);
  }


}