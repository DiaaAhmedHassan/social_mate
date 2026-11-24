import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_componant/login_widget.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_componant/sign_up_widget.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_navigator.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';
import 'package:social_mate/l10n/app_localizations.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
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
                    TabsNavigator(
                      page1Name: local.authSignin,
                      page2Name: local.authSignup,
                      pages: [
                        (goTo) => LoginWidget(onSignupTap: () => goTo(1)),
                        (goTo) => SignUpWidget(),
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