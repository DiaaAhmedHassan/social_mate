import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_dots.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_temp.dart';
import 'package:social_mate/l10n/app_localizations.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  int index = 0;
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (page) => setState(() => index = page),
            children: [
              OnboardingBackground(
                child: OnboardingTemp(
                  image: Images.onboarding1,
                  title: local.onboarding1_title,
                  subtitle: local.onboarding1_subtitle,
                ),
              ),
              OnboardingBackground(
                child: OnboardingTemp(
                  image: Images.onboarding1,
                  title: local.onboarding1_title,
                  subtitle: local.onboarding1_subtitle,
                ),
              ),
              OnboardingBackground(
                child: OnboardingTemp(
                  image: Images.onboarding1,
                  title: local.onboarding1_title,
                  subtitle: local.onboarding1_subtitle,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 3,
            right: 30.w,
            left: 30.w,
            child: OnboardingDots(currentIndex: index,)
          )
        ],
      ),
    );
  }
}
