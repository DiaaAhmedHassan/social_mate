import 'package:flutter/material.dart';
import 'package:social_mate/core/routing/route_names.dart';
import 'package:social_mate/features/auth/presenation/screens/auth_screen.dart';
import 'package:social_mate/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:social_mate/features/splash/splash_screen.dart';
import 'package:social_mate/home/presentations/screens/home_page.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch( settings.name){
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RouteNames.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case RouteNames.auth:
        return MaterialPageRoute(builder: (_) => AuthScreen());
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text("No defiend routes"),),));
    }
  }
}