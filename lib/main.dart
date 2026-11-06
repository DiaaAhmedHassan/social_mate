import 'package:flutter/material.dart';
import 'package:social_mate/app.dart';
import 'package:social_mate/core/routing/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp( App(appRouter: AppRouter(),));
}


