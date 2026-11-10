import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_mate/core/di/injection_container.dart';
import 'package:social_mate/core/routing/route_names.dart';
import 'package:social_mate/features/auth/presenation/cubit/auth_cubit.dart';
import 'package:social_mate/features/auth/presenation/screens/auth_screen.dart';
import 'package:social_mate/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:social_mate/features/splash/splash_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch( settings.name){
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RouteNames.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RouteNames.auth:
        return
        MaterialPageRoute(builder: (_) => BlocProvider(
          create:(_) =>  sl<AuthCubit>(),
          child: AuthScreen()));
         
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text("No defiend routes"),),));
    }
  }
}