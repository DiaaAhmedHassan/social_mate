import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class CreatePostBottomSheet extends StatelessWidget {
  const CreatePostBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 65.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5
            ,
            color: AppColors.grey, offset: Offset(0, -5)),
        ],
        
         borderRadius:  BorderRadius.circular(25.r)

      ),
      // height: 524.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          bottomSheetSelection(icon: AppIcons.image,label: "Add a photo"),
          VerticalSpacer(20.h),
          bottomSheetSelection(icon: AppIcons.video,label:  "Add a video"),
          VerticalSpacer(20.h),
          bottomSheetSelection(icon: AppIcons.attachment,label:  "Add a document"),
          VerticalSpacer(20.h),
          bottomSheetSelection(icon: AppIcons.camera,label:  "Camera"),
        ],
      ),
    );
  }

  Widget bottomSheetSelection({required String icon, required String label, void Function()? onTap}){
    return InkWell(
      onTap: onTap,
      child: Row(children: [
        SvgPicture.asset(icon),
        HorizontalSpacer(10),
        Text(label, style: AppTextStyles(AppColors.black).f16Light,)
      ],),
    );
  }
}