
// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDatasource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDatasource(this.firebaseAuth);


  Future<UserCredential> signupWithEmailPassword({
    required String email,
    required String password,
  }) async {
      final credentials = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      print("=============:User signed up with id: ${credentials.user?.uid}");
      return credentials;
  }

  Future<UserCredential> loginEmailPassword({required String email, required String password})async{
    final credentials = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    print("=============:User logged in with id: ${credentials.user?.uid}");
    return credentials;
  }

  Future<void> logout()async{
    await firebaseAuth.signOut();
    print("============:user signed out");
  }

}