import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';

// ignore: must_be_immutable
class OnboardingDots extends StatelessWidget {
   OnboardingDots({super.key, this.currentIndex = 0});

   int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index){
        return Row(
          children: [
            dot(currentIndex == index),
            HorizontalSpacer(10)
          ],
        );
      })
    );
  }

  Widget dot(bool isSelected){
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: isSelected?27.w: 8.w,
      height: 8.h,
      decoration: BoxDecoration(
        color:isSelected? AppColors.primary: AppColors.grey,
        borderRadius: BorderRadius.circular(30.r)
      ),
    );
  }
}