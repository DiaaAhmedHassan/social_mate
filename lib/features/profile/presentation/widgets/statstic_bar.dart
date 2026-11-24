import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/vertical_row_divider.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class StatsticBar extends StatelessWidget {
  const StatsticBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      padding: EdgeInsets.symmetric(vertical: 17.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: BoxBorder.all(
          color: AppColors.strokeGreyBorder,
          width: 2
        ),
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      _statsticItem(100, "post"),
      VerticalRowDivider(
        height: 34,
        color: AppColors.strokeGreyBorder,
      ),
      _statsticItem(120, "photos"),
      VerticalRowDivider(
        height: 34,
        color: AppColors.strokeGreyBorder,
      ),
      _statsticItem(1000, "followers"),
        ],
      ),
    );
  }

  Widget _statsticItem(int number, String label){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("$number", style: AppTextStyles(AppColors.textPargraph).f24Semibold,),
        Text(label, style: AppTextStyles(AppColors.black.withValues(alpha: 0.65)).f14Medium,)
      ],
    );
  }


}