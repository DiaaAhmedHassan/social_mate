import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:social_mate/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:social_mate/features/auth/data/datasources/user_remote_datasource.dart';
import 'package:social_mate/features/auth/data/repo_impl/auth_repo_impl.dart';
import 'package:social_mate/features/auth/domain/repos/auth_repo.dart';
import 'package:social_mate/features/auth/domain/usecases/login_usecase.dart';
import 'package:social_mate/features/auth/domain/usecases/signup_usecase.dart';
import 'package:social_mate/features/auth/presenation/cubit/auth_cubit.dart';

final sl = GetIt.instance;

Future<void> initSl()async{
  //cubit 
  sl.registerFactory<AuthCubit>(
    ()=> AuthCubit(login: sl<Login>(), signup: sl<Signup>()));


  //usecases
  sl.registerLazySingleton<Login>(() => Login(sl<AuthRepo>()));
  sl.registerLazySingleton<Signup>(() => Signup(sl<AuthRepo>()));

  //repos
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(
    sl<AuthRemoteDatasource>(), 
    sl<UserRemoteDatasource>()));

  //datasources
  sl.registerLazySingleton<AuthRemoteDatasource>(() => AuthRemoteDatasource(sl<FirebaseAuth>()));
  sl.registerLazySingleton<UserRemoteDatasource>(() => UserRemoteDatasource(sl<FirebaseFirestore>()));


  //firebase
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  
}