import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_mate/core/error/failuer.dart';
import 'package:social_mate/core/error/result.dart';
import 'package:social_mate/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:social_mate/features/auth/data/datasources/user_remote_datasource.dart';
import 'package:social_mate/features/auth/data/models/app_user_model.dart';
import 'package:social_mate/features/auth/domain/entities/app_user.dart';
import 'package:social_mate/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{

  final AuthRemoteDatasource authRemoteDatasource;
  final UserRemoteDatasource userRemoteDatasource;

  AuthRepoImpl(
    this.authRemoteDatasource,
    this.userRemoteDatasource,
  );


 @override
Future<Result<AppUser>> loginWithEmailPassword({required String email, required String password}) async {
  try {
    final credentials = await authRemoteDatasource.loginEmailPassword(email: email, password: password);
    final u = credentials.user;
    if (u == null) return  Error(InvalidCredentialsFailure());

    return Success(AppUserModel(
      userId: u.uid,
      email: u.email ?? '',
      username: u.displayName ?? 'guest',
      joinedAt: u.metadata.creationTime?.toIso8601String() ?? '',
      posts: [],
      friends: [],
    ));
  } on FirebaseAuthException catch (e) {
    return Error(_mapAuthError(e));
  } catch (e) {
    return Error(UnknownFailure(e.toString()));
  }
}

Failure _mapAuthError(FirebaseAuthException e) => switch (e.code) {
  'user-not-found' || 'wrong-password' || 'invalid-credential' =>  InvalidCredentialsFailure(),
  'email-already-in-use' =>  EmailAlreadyInUseFailure(),
  'network-request-failed' =>  NetworkFailure(),
  _ => UnknownFailure(e.message ?? 'Auth error'),
};

  @override
  Future<Result<void>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Result<AppUser>> signinWithGoogle() {
    // TODO: implement signinWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Result<AppUser>> signupWithEmailPassword({required String email, required String password, required String username}) async{
     User? firebaseUser;
  try {
    final credential = await authRemoteDatasource.signupWithEmailPassword(
      email: email,
      password: password,
    );

    firebaseUser = credential.user;
    if (firebaseUser == null) return  Error(UnknownFailure('Signup failed'));

    final user = AppUserModel(
      userId: firebaseUser.uid,
      username: username,
      email: email,
      joinedAt: firebaseUser.metadata.creationTime?.toIso8601String() ?? DateTime.now().toIso8601String(),
      posts: [],
      friends: [],
    );

    await userRemoteDatasource.addUserToFireStore(user);
    return  Success(user);
  } on FirebaseAuthException catch (e) {
    return Error(_mapAuthError(e));
  } catch (e) {
    // Firestore failed after Auth succeeded: roll back the auth account
    try {
      await firebaseUser?.delete();
    } catch (_) {
      // rollback failed too; log it, don't mask the original error
      print("===============rolling back");
    }
    return Error(UnknownFailure(e.toString()));
  }


  }

}