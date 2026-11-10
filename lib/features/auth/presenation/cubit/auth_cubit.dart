import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_mate/features/auth/domain/usecases/login_usecase.dart';
import 'package:social_mate/features/auth/domain/usecases/signup_usecase.dart';
import 'package:social_mate/features/auth/presenation/cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
 final Login _login;
 final Signup _signup;
 AuthCubit({required this._login, required this._signup}) : super(AuthInitial());

    /// don't forget to wrap the widget with the block providers 
    /// pass the text.controller as an arguments


 Future<void> login({required String email, required String password})async{
    if(state is AuthLoading) return; // prevent double tap
    emit(AuthLoading());

    final result = await _login(email: email, password: password);

   result.fold(
    onError: (f) => emit(AuthError(f.message)),
    onSuccess: (data) => emit(Authenticated(data)));
 }

Future<void> signup({required String fullName, required String email, required String password})async{
    
    if(state is AuthLoading) return;
    emit(AuthLoading());

    final result = await _signup(username: fullName,email: email, password: password);

    result.fold(
        onError: (f) => emit(AuthError(f.message)),
        onSuccess:(data) =>  emit(Authenticated(data)));

}

 
}