import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/constants/assets.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -50.h,
          left: -50.w,
          child: Image.asset(Images.onboardingBackground)),
        Positioned(
          bottom: -50.h,
          right: -50.w,
          child: Image.asset(Images.onboardingBackground1)),
        Positioned.fill(child: child)

      ],
    );
  }

}
