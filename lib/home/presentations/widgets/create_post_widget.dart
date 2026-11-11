import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';

class CreatePostWidget extends StatelessWidget {
  const CreatePostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 28.h),
      child: DottedBorder(
        
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(24.r),
        color: AppColors.primary, 
        dashPattern: [5, 5]),
        
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 17.h),
          decoration: BoxDecoration(
            color: Color(0xfff1f7fb),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundImage: NetworkImage("https://imgs.search.brave.com/Bw3U_KtyGGULGBe-ouM3zNVvqgjyTizf7ls4OAG1a_A/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzQ4/MzQwODY3L3Bob3Rv/L3BvcnRyYWl0LW9m/LWJlYXJkZWQtbWFu/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1uN3dfSWdHWXpr/VEwtbG9JQVhqUUEz/cjdJQ3FFWEJQbTZP/MlVZTHVnR3ljPQ",
                    
                    ), ),
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
        ),
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