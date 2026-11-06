import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/routing/app_router.dart';
import 'package:social_mate/core/routing/route_names.dart';
import 'package:social_mate/l10n/app_localizations.dart';

class App extends StatelessWidget {
  final AppRouter appRouter;
  const App({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilPlusInit(
      designSize: Size(437, 933),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: [Locale('en'), Locale('ar')],
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: RouteNames.splash,
        
      );
      },
    );
  }
}