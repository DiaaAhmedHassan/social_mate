import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/theme/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.profileImage, required this.coverImage});

  final String profileImage;
  final String coverImage;

  @override
  Widget build(BuildContext context) {
    final double overflow = 50.h;
    return Padding(
      padding: EdgeInsets.only(bottom: overflow),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
              ),
            ),
            child: Image.network(
              coverImage,
              width: double.infinity,
              height: 290.h,
              fit: BoxFit.cover,
            ),
          ),
      
          Positioned(
            bottom: -overflow,
            right: 30.w,
            left: 30.w,
            child: Container(
              width: 124.w,
              height: 124.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
                border: BoxBorder.all(width: 5, color: AppColors.primary),
                image: DecorationImage(
                  image: NetworkImage(profileImage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
