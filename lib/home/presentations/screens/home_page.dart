import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';
import 'package:social_mate/home/presentations/widgets/create_post_widget.dart';
import 'package:social_mate/home/presentations/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(child: 
      SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HomeAppBar(),
              SizedBox(height: 28.h,),
              CreatePostWidget()
            ],
          ),
        ),
      )
      
      ),
    );
  }
}