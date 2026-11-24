import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class ProfileAction extends StatelessWidget {
  const ProfileAction({super.key, required this.onEditTap, required this.onSettingsTap});

  final void Function() onEditTap;
  final void Function() onSettingsTap;

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ElevatedButton(
                  
                  onPressed: onEditTap,
                 style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 74.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(5.r),
                    side: BorderSide(
                      color: Color(0xffDADADA),
                      width: 2
                    )
                    
                  ),
                  elevation: 0,
                  backgroundColor: Colors.transparent,

                 ),
                 child: Text("EDIT PROFILE", style: AppTextStyles(AppColors.textPargraph).f16Semibold,),
                 ),
                 HorizontalSpacer(14),
                 InkWell(
                  onTap: onSettingsTap,
                  child: Container(
                    padding: EdgeInsets.all(9.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: BoxBorder.all(
                        color: AppColors.strokeGreyBorder,
                        width: 2
                      ),
                      
                    ),
                    child: Icon(Icons.settings_outlined, color: AppColors.textPargraph,),
                  ),
                 ),
              ],);
  }
}