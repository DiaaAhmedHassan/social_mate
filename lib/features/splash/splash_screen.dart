import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/routing/route_names.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   Timer? _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer(const Duration(seconds: 3), (){
      //chage to app start
      Navigator.pushReplacementNamed(context, RouteNames.onboarding);
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Images.onboarding1, width: 284.w, height: 241.h,),
          SizedBox(height: 83.h,),
          SvgPicture.asset(Images.appLabel),

        ],
      )),
    );
  }
}