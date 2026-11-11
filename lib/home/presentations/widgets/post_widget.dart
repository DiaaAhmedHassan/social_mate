import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/home/presentations/widgets/post_action_widget.dart';
import 'package:social_mate/home/presentations/widgets/post_content_widget.dart';
import 'package:social_mate/home/presentations/widgets/post_user_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 34.h),
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: BoxBorder.all(
          color: Color(0xffC4C4C4),
          width: 0.5
        ),
      ),
      child: Column(
        children: [
          PostUserWidget(),
          VerticalSpacer(6),
          PostContentWidget(),
          VerticalSpacer(15),
          PostActionWidget()

        ],
      ),
    );
  }
}