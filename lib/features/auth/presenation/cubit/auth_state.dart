import 'package:social_mate/features/auth/domain/entities/app_user.dart';

sealed class AuthState{}

class AuthInitial extends AuthState{
  AuthInitial();
}

class AuthLoading extends AuthState{
  AuthLoading();
}

class AuthSignupSuccess extends AuthState{
  AuthSignupSuccess();
}

class Authenticated extends AuthState{
  final AppUser user;
  Authenticated(this.user);
}

class Unauthenticated extends AuthState{
  Unauthenticated();
}

class AuthError extends AuthState{
  final String message;
  AuthError(this.message);
}