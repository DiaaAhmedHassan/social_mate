import 'package:flutter/material.dart';
import 'package:social_mate/core/constants/app_constatnts.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';
import 'package:social_mate/features/auth/presenation/widgets/auth_navigator.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';
import 'package:social_mate/features/profile/presentation/widgets/details_widget.dart';
import 'package:social_mate/features/profile/presentation/widgets/profile_action.dart';
import 'package:social_mate/features/profile/presentation/widgets/profile_header.dart';
import 'package:social_mate/features/profile/presentation/widgets/profile_posts.dart';
import 'package:social_mate/features/profile/presentation/widgets/statstic_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader(
                profileImage: AppConstatnts.networkProfileImage,
                coverImage: AppConstatnts.networkNatureImage,
              ),
              VerticalSpacer(10),
              Text("Dave C. Brown", style: AppTextStyles(AppColors.black).f28semibold,),
              Text("@dave_brown", style: AppTextStyles(AppColors.black).f16Light,),
              Text("Google Cirtified Ux/Ui Designer", style: AppTextStyles(AppColors.black).f16Light,),
          
              VerticalSpacer(26),
              ProfileAction(
                onEditTap: (){},
                onSettingsTap: (){},
              ),
              VerticalSpacer(23),
            StatsticBar(),
              VerticalSpacer(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: TabsNavigator(
                  isCenterd: true,
                  pages: [
                  (goTo) => ProfilePosts(),
                  (goTo) => DetailsWidget()
                ], page1Name: "Posts", page2Name: "details"),
              )

            ],
          ),
        ),
      ),
    );
  }


}
