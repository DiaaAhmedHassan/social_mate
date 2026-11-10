import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/primary_button.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class OnboardingTemp extends StatelessWidget {
  const OnboardingTemp({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 53.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, width: 248.w, height: 254.h,),
          VerticalSpacer(29),
          Text(title, style: AppTextStyles(AppColors.black).f18Heavy,),
          VerticalSpacer(10),
          Text(subtitle, style: AppTextStyles(AppColors.black).f16Light,
          textAlign: TextAlign.center,),
          VerticalSpacer(MediaQuery.of(context).size.height /5),
          PrimaryButton(label: "Join now", onPressed: (){}),
          VerticalSpacer(20),
          TextButton(onPressed: (){}, child: Text("Sign in", style: AppTextStyles(AppColors.primary).f16Light,))
        ],
      ),
    );
  }
}
