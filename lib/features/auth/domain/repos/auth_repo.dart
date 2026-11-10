import 'package:social_mate/core/error/result.dart';
import 'package:social_mate/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo{
  Future<Result<AppUser>> signupWithEmailPassword({
    required String email,
    required String password,
    required String username,
  });

  Future<Result<AppUser>> signinWithGoogle();

  Future<Result<AppUser>> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Result<void>> signOut();
}