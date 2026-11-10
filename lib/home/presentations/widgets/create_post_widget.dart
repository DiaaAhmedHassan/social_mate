import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/constants/assets.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';

class CreatePostWidget extends StatelessWidget {
  const CreatePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 28.h, horizontal: 17.w),
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 17.h),
      decoration: BoxDecoration(
        color: Color(0xfff1f7fb),
        border: BoxBorder.all(
          color: AppColors.primary,
          style: BorderStyle.solid,
          width: 0.8.w
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(Images.onboarding1),),
              HorizontalSpacer(10),
              Text("Whats on your mind ?", style: TextStyle(color: Color(0xffC4C4C4), fontSize: 18),)
            ],
          ),
          SizedBox(height: 20.h,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            decoration: BoxDecoration(
              color: Color(0xffE4F5FF),
              borderRadius: BorderRadius.circular(8.r),
              border: BoxBorder.all(
                color: AppColors.primaryBlur
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _selection(Icons.image, "Image"),
                _verticalRowDivider(),
                _selection(Icons.video_camera_back_rounded, "Video"),
                _verticalRowDivider(),
                _selection(Icons.attach_file_rounded, "Attach")
                
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _selection(IconData icon, String text){
    return Row(children: [
      Icon(icon, color: AppColors.primary,),
      HorizontalSpacer(6),
      Text(text, style: TextStyle(color: Color(0xff656565), fontSize: 14),),
    ],
    );
  }

  Widget _verticalRowDivider(){
    return Container(
      height: 18.h,
      color:  Color(0xff656565),
      child: SizedBox(
        width: 2,
      ),
    );
  }
}