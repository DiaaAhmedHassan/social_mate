import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class PostContentWidget extends StatelessWidget {
  const PostContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 32.w),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla natoque id aenean.",
            style: AppTextStyles(Color(0xff606073)).f14Medium,
            ),
        ),
          VerticalSpacer(10),
        Container(
          clipBehavior: Clip.hardEdge,
          width: double.infinity,
          height: 177.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(
                "https://imgs.search.brave.com/-NkTTqlYXAwi2x8m5Xf1WZL0U88naXX8QP_7xprQLsQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/dGh1bWJfYmFjay9m/aDI2MC9iYWNrZ3Jv/dW5kLzIwMjQwOTI4/L3BuZ3RyZWUtYmVh/dXRpZnVsLW5hdHVy/ZS1sYW5kc2NhcGUt/d2l0aC1tb3VudGFp/bnMtaW1hZ2VfMTYy/NjA5NjYuanBn",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
