import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class PostUserWidget extends StatelessWidget {
  const PostUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage("https://imgs.search.brave.com/Bw3U_KtyGGULGBe-ouM3zNVvqgjyTizf7ls4OAG1a_A/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzQ4/MzQwODY3L3Bob3Rv/L3BvcnRyYWl0LW9m/LWJlYXJkZWQtbWFu/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1uN3dfSWdHWXpr/VEwtbG9JQVhqUUEz/cjdJQ3FFWEJQbTZP/MlVZTHVnR3ljPQ"),
          radius: 20.r,
        ),
        HorizontalSpacer(17),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Kriston Watshon", style: AppTextStyles(AppColors.black).f18Heavy,),
            Text("08:39 AM", style: AppTextStyles(Color(0xff606073)).f16Light,)
          ],
        )
      ],
    );
  }
}