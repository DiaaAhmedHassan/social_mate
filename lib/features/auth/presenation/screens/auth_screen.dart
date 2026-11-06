import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_componant/login_widget.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_componant/sign_up_widget.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_navigator.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';

class AuthScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 50.h, horizontal: 50.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                    SvgPicture.asset(Images.appLabel),
                    SizedBox(height: 70.h,),
                    AuthNavigator(
                      children: [
                        LoginWidget(),
                        SignUpWidget(),
                      ],
                    )
                    
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}