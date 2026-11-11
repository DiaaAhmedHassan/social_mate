import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/constants/app_constatnts.dart';
import 'package:social_mate/core/shared_widgets/spacer.dart';
import 'package:social_mate/core/theme/app_colors.dart';

class PostVisabilityWidget extends StatefulWidget {
  const PostVisabilityWidget({super.key});

  @override
  State<PostVisabilityWidget> createState() => _PostVisabilityWidgetState();
}

class _PostVisabilityWidgetState extends State<PostVisabilityWidget> {

  String selected = "Public";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(children: [
        CircleAvatar(
          radius: 20.r,
          backgroundImage: NetworkImage(AppConstatnts.networkProfileImage),
        ),
        HorizontalSpacer(10),
        _visibalitySelector()
        
      ],),
    );
  }

  Widget _visibalitySelector(){
   return Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.all(color: AppColors.black)

          ),
          child: DropdownButton<String>(
            isDense: true,
            underline: SizedBox.shrink(),
            value: selected,
            items: [
            DropdownMenuItem(
              value: "Public",
              child: Text("Public")),
            DropdownMenuItem(
              value: "Private",
              child: Text("Private"))
          ], onChanged: (val){
            if(val != null){
              setState(() {
                selected = val;
              });
            }
          }),
        );
  }
}