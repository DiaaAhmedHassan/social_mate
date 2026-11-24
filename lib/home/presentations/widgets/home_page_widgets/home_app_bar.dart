import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_mate/core/constants/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 39.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Images.appLabel, width: 175.w, height: 26.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildClickableIcon(icon: AppIcons.search, onPressed: (){}),
              SizedBox(width: 16.w,),
              _buildClickableIcon(icon: AppIcons.bell, onPressed: (){}),
              SizedBox(width: 16.w,),
              _buildClickableIcon(icon: AppIcons.send, onPressed: (){}),
          ],)
        ],
      ),
    );
  }

  Widget _buildClickableIcon({required String icon, required void Function() onPressed}){
    return InkWell(
      onTap: onPressed,
      child: SvgPicture.asset(icon),
    );
  }
}