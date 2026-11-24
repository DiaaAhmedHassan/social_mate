import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

// ignore: must_be_immutable
class StoryCircle extends StatelessWidget {
   StoryCircle({super.key, this.isMyStory = false, this.image,  this.name});

  bool isMyStory;
  final String? image;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xff0779B8).withValues(alpha: 0.30),
            shape: BoxShape.circle,
          ),
          child: DottedBorder(
             options: RoundedRectDottedBorderOptions(
            radius: Radius.circular(50.r),
            dashPattern: [5],
            color: AppColors.primary
            ),
            
            child: GestureDetector(
            onTap: () {},
            child: isMyStory
                ? CircleAvatar(
                    radius: 30.r,
                    backgroundColor: const Color(0xff0779B8).withValues(alpha: 0.30),
                    child: Icon(Icons.add_circle_outline, color: AppColors.primary),
                  )
                : CircleAvatar(
                    radius: 30.r,
                    backgroundImage: NetworkImage(image ?? 'https://imgs.search.brave.com/Bw3U_KtyGGULGBe-ouM3zNVvqgjyTizf7ls4OAG1a_A/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzQ4/MzQwODY3L3Bob3Rv/L3BvcnRyYWl0LW9m/LWJlYXJkZWQtbWFu/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1uN3dfSWdHWXpr/VEwtbG9JQVhqUUEz/cjdJQ3FFWEJQbTZP/MlVZTHVnR3ljPQ'),
                  ),
          ),),
        ),
        VerticalSpacer(6),
        Text(name??"Share story", style: AppTextStyles(Color(0xff45556C)).f14Medium,)
      ],
    );
  }
}