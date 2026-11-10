import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_mate/app.dart';
import 'package:social_mate/core/di/injection_container.dart';
import 'package:social_mate/core/routing/app_router.dart';
import 'package:social_mate/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  initSl();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  
  runApp( App(appRouter: AppRouter(),));
}


